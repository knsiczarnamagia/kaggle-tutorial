import numpy as np


def test_zeros():
    matrix = np.array([[0, 0, 0], [0, 0, 0]])
    assert np.array_equal(matrix, np.zeros_like(matrix))


def test_random_matrix():
    matrix = np.ones((3, 3))
    assert matrix.shape == (3, 3)
    assert np.array_equal(matrix, np.ones((3, 3)))  # Do not change this line
