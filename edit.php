<?php
include 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $id = $_GET['id'];

    $sql = "SELECT * FROM students WHERE id=$id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $student = $result->fetch_assoc();
    } else {
        echo "No student found.";
        exit();
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $lrn = $_POST['lrn'];
    $year_level = $_POST['year_level'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];

    $sql = "UPDATE students SET first_name='$first_name', last_name='$last_name', lrn='$lrn', year_level='$year_level', age='$age', gender='$gender' WHERE id=$id";

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
                <input type="hidden" name="id" value="<?php echo $id; ?>">
                <input type="text" name="first_name" value="<?php echo $student['first_name']; ?>" required>
                <input type="text" name="last_name" value="<?php echo $student['last_name']; ?>" required>
                <input type="text" name="lrn" value="<?php echo $student['lrn']; ?>" required>
                <select name="year_level" required>
                    <option value="Kindergarten" <?php if ($student['year_level'] == 'Kindergarten') echo 'selected'; ?>>Kindergarten</option>
                    <option value="Pre-Kindergarten" <?php if ($student['year_level'] == 'Pre-Kindergarten') echo 'selected'; ?>>Pre-Kindergarten</option>
                    <option value="Nursery" <?php if ($student['year_level'] == 'Nursery') echo 'selected'; ?>>Nursery</option>
                </select>
                <input type="number" name="age" value="<?php echo $student['age']; ?>" required>
                <select name="gender" required>
                    <option value="Male" <?php if ($student['gender'] == 'Male') echo 'selected'; ?>>Male</option>
                    <option value="Female" <?php if ($student['gender'] == 'Female') echo 'selected'; ?>>Female</option>
                    <option value="Other" <?php if ($student['gender'] == 'Other') echo 'selected'; ?>>Other</option>
                </select>
                <button type="submit">Update</button>
            </form>
        </section>
    </main>
</body>
</html>
