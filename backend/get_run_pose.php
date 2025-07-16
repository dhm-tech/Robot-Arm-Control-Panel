<?php
include 'db.php';

$sql = "SELECT * FROM robot_arm ORDER BY timestamp DESC LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo json_encode($result->fetch_assoc());
} else {
    echo json_encode(["error" => "No data found"]);
}

$conn->close();
?>
