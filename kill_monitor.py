import os

with open("node-list.txt") as f:
    for server_name in f:
        server_name = server_name.strip()
        # Full SSH command — everything runs on remote server
        full_command = (
            f"ssh {server_name} "
            f"'cd ../../archive/gpu_usage; "
            f"bash kill_single_node.sh getstat.py {server_name}'"
        )
        print(f"Running command: {full_command}")
        os.system(full_command)