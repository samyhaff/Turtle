open Ast

let parse s =
    let lexbuf = Lexing.from_string s in
    let ast = Parser.prog Lexer.read lexbuf in
    ast

let move command x y =
    match command with
    | Move (dir, n) ->
            (match dir with
            | Forward -> (x, y + n)
            | Back -> (x, y - n)
            | Right -> (x + n, y)
            | Left -> (x - n, y))
    | _ -> (x, y)
