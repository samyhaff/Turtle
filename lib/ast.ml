type dir =
    | Forward
    | Back
    | Right
    | Left

type expr =
    | Move of dir * int
    | Repeat of int * expr
