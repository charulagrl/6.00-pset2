def isIn(char, aStr):
    '''
    char: a single character
    aStr: an alphabetized string
    
    returns: True if char is in aStr; False otherwise
    '''
    # Your code here
    if aStr == ' ' :
       return False
    elif len(aStr) == 1:
       if aStr[0] == char:
          return True
       else:
          return False
    else:
       while True:
      
          x = len(aStr) / 2
  
          if aStr[x] == char:
             return True
          if len(aStr) == 1 and aStr[x] != char:
              return False
          elif char > aStr[x ] :
             return isIn(char, aStr[x:])
          else:
             return isIn(char, aStr[:x])

