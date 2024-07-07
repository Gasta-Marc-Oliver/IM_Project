<?php
include 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $id = $_GET['Student_ID'];

    $sql = "SELECT * FROM students WHERE Student_ID=$Student_ID";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $student = $result->fetch_assoc();
    } else {
        echo "No student found.";
        exit();
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['Student_ID'];
    $first_name = $_POST['F_name'];
    $last_name = $_POST['L_name'];
    $lrn = $_POST['LRN'];
    $year_level = $_POST['Level'];
    $age = $_POST['Age'];
    $gender = $_POST['Gender'];

    $sql = "UPDATE students 
            SET F_name='$F_name', L_name='$L_name', LRN='$LRN', 
                Level='$year_level', Age='$Age', Gender='$Gender' 
            WHERE Student_ID=$Student_ID";

    if ($conn->query($sql) === TRUE) {
        echo "Student updated successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
    header("Location: index.html");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
        <h1>Edit Student</h1>
    </header>
    <main>
        <section id="edit-form">
            <form action="edit.php" method="post">
                <input type="hidden" name="Student_ID" value="<?php echo $Student_ID; ?>">
                <input type="text" name="F_name" value="
                    <?php echo $student['F_name']; ?>" required>
                <input type="text" name="L_name" value="
                    <?php echo $student['L_name']; ?>" required>
                <input type="text" name="LRN" value="
                    <?php echo $student['LRN']; ?>" required>
                <select name="Level" required>
                    <option value="Kindergarten" 
                        <?php if ($student['Level'] == 'Kindergarten') 
                            echo 'selected'; ?>>Kindergarten</option>
                    <option value="Pre-Kindergarten" 
                        <?php if ($student['Level'] == 'Pre-Kindergarten') 
                            echo 'selected'; ?>>Pre-Kindergarten</option>
                    <option value="Nursery" 
                        <?php if ($student['Level'] == 'Nursery') 
                            echo 'selected'; ?>>Nursery</option>
                </select>
                <input type="number" name="Age" value="
                    <?php echo $student['Age']; ?>" required>
                <select name="Gender" required>
                    <option value="Male" 
                        <?php if ($student['Gender'] == 'Male') 
                            echo 'selected'; ?>>Male</option>
                    <option value="Female" 
                        <?php if ($student['Gender'] == 'Female') 
                            echo 'selected'; ?>>Female</option>
                    <option value="Other" 
                        <?php if ($student['Gender'] == 'Other') 
                            echo 'selected'; ?>>Other</option>
                </select>
                <button type="submit">Update</button>
            </form>
        </section>
    </main>
</body>

</html>