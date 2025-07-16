<?php
include 'db.php';

$data = json_decode(file_get_contents('php://input'), true);
$motors = $data['motors'];

$sql = "INSERT INTO poses (motor1, motor2, motor3, motor4, motor5, motor6) VALUES (?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("iiiiii", ...$motors);

if ($stmt->execute()) {
    echo "Pose saved successfully.";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
