<?php
include 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $id = $_GET['id'];

    $sql = "SELECT students.name, grade_level.level, parents.name AS parent_name FROM students JOIN grade_level ON students.grade_level_id = grade_level.id JOIN parents ON students.parent_id = parents.id WHERE students.id=$id";
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
    $student_name = $_POST['student_name'];
    $grade_level = $_POST['grade_level'];
    $parent_name = $_POST['parent_name'];

    $sql = "SELECT id FROM grade_level WHERE level='$grade_level'";
    $result = $conn->query($sql);
    $grade_level_id = $result->fetch_assoc()['id'];

    $sql = "SELECT id FROM parents WHERE name='$parent_name'";
    $result = $conn->query($sql);
    $parent_id = $result->fetch_assoc()['id'];

    $sql = "UPDATE students SET name='$student_name', grade_level_id='$grade_level_id', parent_id='$parent_id' WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Student updated successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Edit Student</h1>
    </header>
    <main>
        <section id="edit-form">
            <form action="edit.php" method="post">
                <input type="hidden" name="id" value="<?php echo $id; ?>">
                <input type="text" name="student_name" value="<?php echo $student['name']; ?>" required>
                <input type="text" name="grade_level" value="<?php echo $student['level']; ?>" required>
                <input type="text" name="parent_name" value="<?php echo $student['parent_name']; ?>" required>
                <button type="submit">Update</button>
            </form>
        </section>
    </main>
</body>
</html>
