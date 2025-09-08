# Install WSL on Windows
[https://learn.microsoft.com/en-us/windows/wsl/install](https://learn.microsoft.com/en-us/windows/wsl/install)

```
wsl --install
```

## For the following error
```
The operation could not be started because a required feature is not installed.
Error code: Wsl/InstallDistro/Service/RegisterDistro/CreateVm/HCS/HCS_E_SERVICE_NOT_AVAILABLE
```

Run  these commands to enable virtualization, reboot, and try ``wsl -install`` again.

```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

## Running WSL

Once WSL is installed, you can launch it from a command prompt or terminal using

```
wsl
```

Or to start a specific distribution
```
wsl -d <distribution_name>
```

Download Docker Desktop for windows
Follow the instructions on this webpage to download Docker Desktop and enable Docker support in WSL if necessary.
[https://docs.docker.com/desktop/features/wsl/](https://docs.docker.com/desktop/features/wsl/)


<br> <br> <br> <br>



# Working across filesystems in WSL

Your Windows filesystem will be accessible from WSL under ``/mnt/c``
Cpputest

[https://cpputest.github.io/](https://cpputest.github.io/)



