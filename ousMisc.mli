open OusTypes

(** Output of messages (stdout) *)
val msg : ('a, unit, string, unit) format4 -> 'a

(** Filename concat *)
val (/): string -> string -> string

(** Reverse composition *)
val (@>): ('a -> 'b) -> ('b -> 'c) -> ('a -> 'c)

module StringMap: Map.S with type key = string
type 'a stringmap = 'a StringMap.t

(** Cuts a string into lines *)
val lines_of_string: string -> lines

(** Returns the empty list if the file doesn't exist. *)
val lines_of_file: string -> lines

(** Runs a command through /bin/sh and returns the lines from its standard
    output once finished *)
val lines_of_command: string -> lines

(** Writes a list of line to a file *)
val lines_to_file: lines -> string -> unit

(** Query OPAM for a variable (see 'opam config list') *)
val opam_var: string -> string

(** Checks if the given command is available on the system *)
val has_command: string -> bool
