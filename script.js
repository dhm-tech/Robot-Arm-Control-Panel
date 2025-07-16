function updateValue(motor) {
    const val = document.getElementById(`motor${motor}`).value;
    document.getElementById(`value${motor}`).innerText = val;
}

function resetSliders() {
    for (let i = 1; i <= 6; i++) {
        document.getElementById(`motor${i}`).value = 90;
        updateValue(i);
    }
}

function savePose() {
    const values = [];
    for (let i = 1; i <= 6; i++) {
        values.push(document.getElementById(`motor${i}`).value);
    }

    fetch('save_pose.php', {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({ motors: values })
    })
    .then(response => response.text())
    .then(data => {
        alert(data);
        loadTable();
    });
}

function runPose() {
    alert("Run command sent (to be implemented)");
}

function loadTable() {
    fetch('get_all_poses.php')
        .then(response => response.text())
        .then(html => document.getElementById("posesTable").innerHTML = html);
}

function loadPose(id) {
    fetch(`load_pose.php?id=${id}`)
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                alert("Pose not found");
                return;
            }

            for (let i = 1; i <= 6; i++) {
                let slider = document.getElementById(`motor${i}`);
                let value = data[`motor${i}`];
                slider.value = value;
                updateValue(i);
            }
        });
}

function removePose(id) {
    fetch(`remove_pose.php?id=${id}`)
        .then(() => loadTable());
}

window.onload = () => {
    loadTable();
};

