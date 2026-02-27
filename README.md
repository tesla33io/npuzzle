# N-Puzzle Solver

This project demonstrates practical implementation of informed search, heuristic design, and state-space exploration.

It implements a solver for the classic N-Puzzle (e.g. 8-puzzle, 15-puzzle) using the A* search algorithm and some heuristics.

The goal is to transform a given board configuration into the target "snail" configuration by sliding tiles into the empty space. Each move swaps the empty tile with one of its four direct neighbors.

The project follows the official subject specification: 

---

## Features

* Supports arbitrary puzzle sizes (3×3, 4×4, 5×5, ... within practical limits)
* Solves: [TBD]

  * Randomly generated boards
  * Boards provided via input files
* Uses A* search with: [TBD]

  * Unit transition cost (g(x) incremented by 1 per move)
  * At least three heuristics
  * Mandatory Manhattan distance heuristic
* Detects unsolvable configurations [TBD]
* Outputs: [TBD]

  * Total number of explored states (time complexity)
  * Maximum number of states stored simultaneously (space complexity)
  * Number of moves in the solution
  * Full sequence of states from start to goal

---

## Input Format

The solver accepts input files in the following format:

* First non-comment line: puzzle size `N`
* Followed by `N` lines of `N` integers
* `0` represents the empty tile
* Lines may contain comments starting with `#`
* Board alignment may vary (both aligned and non-aligned formats are accepted)

Example:

```
# this is a comment
3
3 2 6
1 4 0
8 7 5
```

---

## Build

A Makefile is provided with standard rules. Typical usage:

```
make
make clean
make fclean
make re
```

---

## Usage

TBD

---

## Algorithm Overview

The solver is based on A* search:

* Each state represents a board configuration.
* The priority of a state is `f(x) = g(x) + h(x)`:

  * `g(x)` — number of moves from the start.
  * `h(x)` — heuristic estimate of distance to goal.
* Heuristics are ensuring optimal solutions.

---

## Notes

* Performance depends strongly on puzzle size and heuristic choice.
* Large instances (e.g. 5×5 and above) may require significant memory and time.
* The solver prioritizes correctness and admissibility over brute-force exploration.

