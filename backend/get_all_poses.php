<?php
include 'db.php';

$result = $conn->query("SELECT * FROM poses ORDER BY id DESC");

echo "<table>
        <tr>
            <th>#</th>
            <th>Motor 1</th>
            <th>Motor 2</th>
            <th>Motor 3</th>
            <th>Motor 4</th>
            <th>Motor 5</th>
            <th>Motor 6</th>
            <th>Action</th>
        </tr>";

$index = 1;
while ($row = $result->fetch_assoc()) {
    echo "<tr>
        <td>" . $index++ . "</td>
            <td>{$row['motor1']}</td>
            <td>{$row['motor2']}</td>
            <td>{$row['motor3']}</td>
            <td>{$row['motor4']}</td>
            <td>{$row['motor5']}</td>
            <td>{$row['motor6']}</td>
            <td>
                <button onclick='loadPose({$row['id']})'>Load</button>
                <button onclick='removePose({$row['id']})'>Remove</button>
            </td>
        </tr>";
}

echo "</table>";

$conn->close();
?>
