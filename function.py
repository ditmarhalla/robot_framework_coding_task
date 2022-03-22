def output(number):
    '''
    :parameter number: should be an int
    :retrun: 10/number if requirement is fulfilled
            error if requirement is not fulfilled
    '''
    if number > 100 or number < -100 or number == 13:
        raise Exception("System error")
    print(10/number)
