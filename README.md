# Bad-DLL-Memory
You always forget where which API might forward to? Or in which DLL it is implemented? Just use the Github or local search on this repository.

As I was working on a Shellcode loader, I found myself always looking for where API calls forward to in the ntdll.dll file for example.
So I started creating this list by using the tool ```dumpbin.exe``` from the Visual Studio Toolset.

As I created this list here using a host that has various software already installed, some of these DLLs might not be available on a freshly setup device.
But as the goal of this repository is to have a lookup database, enjoy!
