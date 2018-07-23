//amancoin ICO

//version of compiler
pragma solidity ^0.4.11;
contract amancoin_ico { //contract defination

    //Setting the total number of amancoins available for offering
    uint public max_amancoins = 1000000 ;//unsigned intger
                                        //Public variable, everyone will know its value
                                        //initialised to one million
    
    //Introducing USD to amancoins conversion rate
    uint public usd_to_amancoins = 1000; //public since everyonw must know the conversion rate
                                         //one usd = 1000 amancoins
    // introducing the total number of amancoins that have been bought by investors
    uint public total_amancoins_bought = 0; //public to maintain transparency of data
    
    //Mapping from the investor address to its equity in Amancoins and USD
    mapping (address => uint) equity_amancoins; //takes in an address and returns an integer

    mapping (address => uint) equity_usd;

    //checking if an investor can buy amancoins
    modifier can_buy_amancoins(uint usd_invested) { 
        require(usd_invested * usd_to_amancoins + total_amancoins_bought <= max_amancoins);
        _; //means that the function to which we will link the modifier will execute only if the above boolean 
           //function executes or is true.
    }

    //function to get the equity in amancoins of an invester
    function equity_in_amancoins(address investor) external constant returns (uint){ //external constant is for the address
                                                                                    //returns an int
        return equity_amancoins[investor]; //mapping variable, takes in address and returns the equity

        
    }
    //function to get the equity in usd of an invester
     function equity_in_usd(address investor) external constant returns (uint){ //external constant is for the address
                                                                                    //returns an int
        return equity_usd[investor]; //mapping variable, takes in address and returns the equity

        
    }
    //Buying Amancoins
    function buy_amancoins(address investor, uint usd_invested) external 
    can_buy_amancoins(usd_invested) { //checks the modifier and then only starts the function body
        uint amancoins_bought = usd_invested * usd_to_amancoins; //calculating the amancoins number
        equity_amancoins[investor] += amancoins_bought; //adding/updating the equity value
        equity_usd[investor] = equity_amancoins[investor]/1000;
        total_amancoins_bought += amancoins_bought; //updating the total amancoins bought by all the investors by adding 
                                                    //the current investor's purchase 


    }

    //selling amancoins, giving options to investors
     function sell_amancoins(address investor, uint amancoins_sold) external { 
        equity_amancoins[investor] -= amancoins_sold; //subtracting/updating the equity value
        equity_usd[investor] = equity_amancoins[investor]/1000;
        total_amancoins_bought -= amancoins_sold; //updating the total amancoins bought by all the investors by subtracting 
                                                    //the current investor's purchase 


    }
        
    
}
