import unittest
from app import add_task, get_tasks

class TestToDoApp(unittest.TestCase):
    def setUp(self):
        global tasks
        tasks = []

    def test_add_task(self):
        add_task("Study lecture 7")
        self.assertEqual(get_tasks(), ["Study lecture 7"])

        add_task("Study lecture 8")
        self.assertEqual(get_tasks(), ["Study lecture 7", "Study lecture 8"])


if __name__ == "__main__":
    unittest.main()
