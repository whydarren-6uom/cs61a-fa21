from utils import get_common_unique_words_from_corpus as getcommon

PLAYER_NAME = 'Qingdao Academy of Drama'


def autocorrect(user_word):
    common = getcommon('the_adventures_of_sherlock_holmes.txt')
    def f(refer, sum, i):
        if i == len(user_word) or i == len(refer):
            return sum
        elif user_word[i] == refer[i]:
            return f(refer, sum + 1, i + 1)
        return f(refer, sum, i + 1)
    if user_word in common:
        return user_word
    else:
        prob = max_prob = 0
        max_word = ''
        for c in common:
            prob = f(c, 0, 0) / len(user_word) * 100
            if prob > max_prob:
                max_prob = prob
                max_word = c
        if max_word == '':
            return user_word
        return max_word