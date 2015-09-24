# Data Drill: Nested Arrays

## Summary
Arrays are useful objects for storing collections of data: a list of numbers, strings, or what-have-you. They are fairly simple objects, and their flexibility leads to limitless possibilities for use.  One common design pattern we''ll encounter is the *nested array*, an array whose elements are arrays themselves.  A list of lists, we could say.

```ruby
tic_tac_toe_board = [
  ["X", "X", "O"],
  ["O", "O", "X"],
  ["X", "O", "X"]
]

first_row = tic_tac_toe_board[0]
# => ["X", "X", "O"]

first_row_third_column = first_row[2]
# => "O"
```
*Figure 1*.  Representing a grid in a nested array data structure.

Nested arrays are handy for representing grids, like a tic-tac-toe board (see Figure 1).  We generally think of grids in terms of rows and columns.  Nested arrays are a data structure that closely mimics this thinking.  We can think of the elements inside the outer array as rows.  And the elements within the individual rows are column values.

If we wanted to get the first row of the grid, we can access the element at index 0.  Once we have that first row, then we can get the values in specific columns.  Figure 1 shows how we can access both the first row of the tic-tac-toe board and also how to get the value from the last column in that row.

In Figure 1, to get the value in the third column of the first row, we take the intermediary step of assigning the first row to a variable.  We then use the variable when we want to find the value of the third column.  We could eliminate this step and instead use method chaining:  `tic_tac_toe[0][2]`.

This summary has talked about accessing values in nested arrays.  Our task in this challenge is to build some nested arrays.


## Releases
### Release 0 : Chessboard

Create a method that builds an array representing a chess board.

The method you write should also populate the board with the appropriate pieces represented as strings, i.e. `"W Knight", "B Pawn", "B Queen", etc. Don't overthink this!  It's as simple as it seems.

```ruby
# Example usage:
board = generate_chessboard
puts board[7][0] == "W Rook"    # outputs true
```

Write some simple rspec tests to prove that your board generator is working correctly.

###Release 1 : Data table

Nested arrays can also be used as a way to store data in a table format, similar to a spreadsheet.

Create a method that builds an array to store this data:

```text
| Number  | Name        | Position       | Points per Game      |
+---------+-------------+----------------+----------------------+
| 12      | Joe Schmo   | Center         | [14, 32, 7, 0, 23]   |
| 9       | Ms. Buckets | Point Guard    | [19, 0, 11, 22, 0]   |
| 31      | Harvey Kay  | Shooting Guard | [0, 30, 16, 0, 25]   |
| 18      | Sally Talls | Power Forward  | [18, 29, 26, 31, 19] |
| 22      | MK DiBoux   | Small Forward  | [11, 0, 23, 17, 0]   |
```

When complete, you should be able to index into it like this:

```ruby
puts table[3][2] == "Shooting Guard"      # outputs true
puts table[1][3] == [14, 32, 7, 0, 23]    # outputs true
```

Write some rspec tests to prove that your table generator is correct.

**Extra Credit**: It's kind of silly to code this table by hand in the generator method. Can you write a method that allows you to add a new row to an existing table? If you do, make sure you have tests to prove that your extra credit work functions correctly as well.

##Resources

 * [Chess Board](http://designindevelopment.com/wp-content/uploads/2010/04/chessboard.jpg)
