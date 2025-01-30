## Docker Setup

```bash
./build.sh 
```
In Docker shell
```bash
./run ./bin/[binary] logn
```
[binary]=test_ot, test_ferret

logn = number of OT 

## Rebuilding Locally 
```bash
cmake .
make -4j
sudo make install
```
Note: May need to modify paths in CMakeLists.txt 
