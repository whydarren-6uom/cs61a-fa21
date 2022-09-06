def falling(n, k):
    """Compute the falling factorial of n to depth k.

    >>> falling(6, 3)  # 6 * 5 * 4
    120
    >>> falling(4, 3)  # 4 * 3 * 2
    24
    >>> falling(4, 1)  # 4
    4
    >>> falling(4, 0)
    1
    """
    a = 1
    if k != 0:
        while k >= 1:
            a *= n
            n -= 1
            k -= 1
        return a
    else:
        return 1


def sum_digits(y):
    """Sum all the digits of y.

    >>> sum_digits(10) # 1 + 0 = 1
    1
    >>> sum_digits(4224) # 4 + 2 + 2 + 4 = 12
    12
    >>> sum_digits(1234567890)
    45
    >>> a = sum_digits(123) # make sure that you are using return rather than print
    >>> a
    6
    """
    j = 0
    while y >= 1:
        k = y % 10
        j += k
        y = y // 10
    return j


def double_eights(n):
    """Return true if n has two eights in a row.
    >>> double_eights(8)
    False
    >>> double_eights(88)
    True
    >>> double_eights(2882)
    True
    >>> double_eights(880088)
    True
    >>> double_eights(12345)
    False
    >>> double_eights(80808080)
    False
    """
    j = 0
    while n >= 1:
        k = n % 10
        if k == 8:
            j += 1
        else:
            j -= 1
        if j < 0:
            j = 0
        if j == 2:
            return True
            break
        n = n // 10
    if j < 2:
        return False
