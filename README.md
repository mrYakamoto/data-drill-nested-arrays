# Data Drill Nested Arrays

##Learning Competencies

* Store and access data in a data structure

##Summary

Arrays are exceedingly useful for storing collections of data due to their flexibility and simplicity. The possibilities for different uses of arrays are limitless.

One common design pattern you will encounter is **nested arrays**, i.e. arrays within arrays. With nested arrays, we can store and organize data according to a variety of patterns.

```ruby
nested_array = [ [1, 2], [3, 4], [5, 6] ]
puts nested_array[1][0] == 3     # outputs true
```

### Example: Grid Pattern

Using nested arrays, we can represent a 2-dimensional grid of a tic tac toe board:

```ruby
tic_tac_toe = [ ["X", "X", "O"],
                ["O", "X", "O"],
                ["O", "O", "X"] ]
```

Any element in a grid pattern has two indices: the first index identifies the "row" (the position of the nested array it is in) and the second index identifies the "column" (the position of the element within the nested array). In the example above, the number represents the row and the letter represents the column.

We can index into a grid with the pattern `array[row][column]`.

For example, in the `tic_tac_toe` array above, we can access the center tic tac toe box by writing `tic_tac_toe[1][1]`, since it is in the 1st row, 1st column. (Remember, arrays start counting at zero!)


##Releases

###Release 0 : Chessboard

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

You can use the first nested array to store the headers, and then each of the subsequent nested arrays can store the values in the particular column.

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
