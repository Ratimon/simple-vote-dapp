# simple-vote-dapp

#  Installation
1. Go to <https://truffleframework.com/ganache> and install an in-memory blockchain called ganache for development purposes. You can either install a command line version called ganache-cli or the GUI version. Another nice thing about ganache is that you get 10 test accounts loaded with 100 Ether for your testing.
    ```
    $ npm install -g ethereumjs-testrpc
    ```
2. Once it is installed, go to index.html and change the address following:
    ```
    contractInstance=VotingContract.at('0x0e45a3557f2fa1a7487bd1fe06a6c1ecb8740610');
    ```