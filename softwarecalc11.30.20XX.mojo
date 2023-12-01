 
## // Flames Co. 20XX // ##
# Constants
operations = ["add", "subtract", "multiply", "divide"]

# Main program
def main():
    print("Simple CLI Calculator")
    
    while True:
        operation = input("Enter operation ({}), or 'exit': "
                          .format("/".join(operations))).lower()
                          
        if operation == "exit":
            break
            
        a = get_number("first") 
        b = get_number("second")
        
        try:
            result = Calculator.compute(operation, a, b)
        except InvalidOperationError:
            print("Invalid operation entered") 
        else:   
            print(f"Result: {result}")
            
    print("Bye!")
    
        
def get_number(position):
    while True:
        try:
            return float(input(f"Enter {position} number: "))  
        except ValueError:
            print("Invalid input. Please enter a number.")
                

if __name__ == "__main__":
    main()
