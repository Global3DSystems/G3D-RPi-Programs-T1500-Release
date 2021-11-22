import os
import sys
import subprocess


dir_path, _ =  os.path.split(sys.argv[0])
rpi_config_path = "/boot/config.txt"
g3d_config_path = os.path.join(dir_path, "..", "g3d_rpi_programs.config")
config_network_script_path = os.path.join(dir_path, "configure_network.py")
   

def set_default_config():
    
    # Set quick start to false.
    write_config(g3d_config_path, "quickstart", "false")

    # Set theme to blue.
    write_config(g3d_config_path, "theme", "blue")

    # Set printer name to G3D T2000.
    write_config(g3d_config_path, "printer_name", "G3D T2000")

    # Set network mode text to hotspot.
    write_config(g3d_config_path, "network_mode", "hotspot")
 

def set_default_hotspot():

    serial_num = read_config(rpi_config_path, "serial_number")

    if serial_num != "":
        default_ssid = serial_num
    else:
        default_ssid = "G3D-T2000-Printer"
        
    default_pass = "g3dTestPass"

    print("Default ssid: {}".format(default_ssid))
    print("Default password: {}".format(default_pass))

    subprocess.run(["sudo", "python3", config_network_script_path, "hotspot", default_ssid, default_pass])

def read_config(path, key):

    try:
        with open(path, "r", newline = "") as f:

            for line in f:

                if line.startswith(key):
                    target = line.strip()
                    key, val = target.split("=")
                    key = key.strip()
                    val = val.strip()

                    print(key, val)
        return val

    except Exception as exp:
        print(str(exp))

    return ""

def write_config(path, key, new_val):

    new_contents = ""

    with open(path, "r", newline = "") as f:

        for line in f:
            
            if line.startswith(key):
                target = line.strip()
                key, val = target.split("=")

                key = key.strip()
                val = val.strip()

                line = key + "=" + new_val
            
            new_contents += line.strip() + "\n"

    with open(path, "w", newline = "") as f:
        f.write(new_contents)


if __name__ == "__main__":

    set_default_config()
    set_default_hotspot()