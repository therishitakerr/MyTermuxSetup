# MyTermuxSetup
script to setup termux app

# How to run
1. install Termux app [from here](https://f-droid.org/en/packages/com.termux/).

2. open termux and copy paste below command:

```
pkg upgrade -y && pkg install git -y && git clone https://github.com/therishitakerr/MyTermuxSetup && chmod +x MyTermuxSetup/setupTermux.sh && ./MyTermuxSetup/setupTermux.sh
```
3. after running above command exit and reopen app to enable following services: atd and crond

```
sv enable atd; sv enable crond
```
