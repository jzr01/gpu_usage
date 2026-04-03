import os

with open("node-list.txt") as f:
    for server_name in f:
        server_name = server_name.strip()
        # Full command: everything runs **inside the remote ssh session**
        full_command = (
            f"ssh {server_name} "
            f"'cd ../../archive/gpu_usage; "
            f"bash run_single_node.sh {server_name} nodestats/'"
        )
        print(f"Running command: {full_command}")
        os.system(full_command)
        