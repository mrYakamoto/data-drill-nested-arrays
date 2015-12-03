# PSEUDO
# INPUT: nothing
# OUTPUT: nested arrray with corresponding chess pieces


def generate_chessboard
  chessboard = []
  chessboard.push(['B Rook', 'B Knight', 'B Bishop', 'B Queen', 'B King', 'B Bishop', 'B Knight', 'B Rook'])
  chessboard.push([])
  8.times{ chessboard[1].push('B Pawn') }
  4.times do
    chessboard.push([])
    8.times{ chessboard[-1].push(nil) }
  end
  chessboard.push([])
  8.times{ chessboard[6].push('W Pawn') }
  chessboard.push(['W Rook', 'W Knight', 'W Bishop', 'W Queen', 'W King', 'W Bishop', 'W Knight', 'W Rook'])
  chessboard
end
