def func(x):
    return x + 1


def test_answer():
    assert func(3) == 4


def test_question():
    assert func(5) == 7


def test_eq():
    assert func(6) == 10
