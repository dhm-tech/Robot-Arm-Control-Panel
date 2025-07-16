<?php
include 'db.php';

$sql = "UPDATE robot_arm SET status = 0 ORDER BY timestamp DESC LIMIT 1";
if ($conn->query($sql) === TRUE) {
    echo "Status updated successfully.";
} else {
    echo "Error updating status: " . $conn->error;
}

$conn->close();
?>
