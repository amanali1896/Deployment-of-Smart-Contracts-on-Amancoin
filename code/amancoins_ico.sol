//amancoin ICO

//version of compiler
pragma solidity ^0.4.11;
contract amancoin_ico { //contract defination

    //Setting the total number of amancoins available for offering
    uint public max_amancoins = 1000000 ;//unsigned intger
                                        //Public variable, everyone will know its value
                                        //initialised to one million
    
    //Introducing USD to amancoins conversion rate
    uint public usd_to_amancoins = 1000;

    // introducing the total number of amancoins that have been bought by investors
    uint public total_amancoins_bought = 0;
    
}
