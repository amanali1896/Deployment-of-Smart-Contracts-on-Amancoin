# Deployment-of-Smart-Contracts-on-Amancoin
Tools:
1) Download and install Ganache from https://truffleframework.com/ganache .
2) Download the etherwallet zipped code from "etherwallet code" folder of this repository. 
3) Remix, A solidity IDE https://remix.ethereum.org/ .

Steps to run this project:
1) Open Ganache.
2) Copy the address of any of the row, I have selected row 1. Note that these addresses will be different in your computer. 
   (refer demo folder image 1).
3) Unzip the etherwallet code, and click on index.html file. It will open up in a browser. Follow along and read the terms. 
   Then exit the window.
4) Select Add custom network/node from the Network ETH dropdown (refer demo folder image 2).
5) Fill out the custom node details as shown(refer demo folder image 3).
6) Under contract tab click on "deploy contract" (refer demo folder image 4).
7) In remix ide where you have the solidity code, click on details. copy the byte code number from the object key
   (refer demo folder image 5).
8) Open Ganache and click on key logo. After you click that, you will see the private key. (refer demo folder images 6 and 7). 
9) Paste the byte code (from step 7) and private key (from step 8) in the layout you get in step 6 and click unlock button.  
   (refer demo folder image 8). Note that the gas limit is automatically filled based on the byte code.
10) Click on sign transaction and click on deploy contracts. Click on yes to make the transaction.( refer demo folder image 9).
11) Open Ganache and observed the changes.(refer demo folder images 10, 11 and 12).
12) Now that we have deployed the contract. Now is the time to interact with the contract.
    Do this by clicking on "interact with contract" on myetherwallet page. (refer demo folder image 13).
13) Open Ganache and click on the transaction. Copy the created contract address.(refer demo folder image 14)
14) Open Remix IDE. Click on details and then click on clipboard sign near the ABI to copy the ABI values.
    (refer demo folder image 15).

