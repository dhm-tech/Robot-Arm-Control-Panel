<?php
include 'db.php';

$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

$sql = "DELETE FROM poses WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    echo "Pose removed successfully.";
} else {
    echo "Error deleting pose: " . $conn->error;
}

$conn->close();
?>
