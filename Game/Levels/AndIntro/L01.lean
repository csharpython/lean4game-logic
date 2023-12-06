
import Game.Metadata

World "AndIntro"
Level 1
Title "Exactly! It's in the premise"

NewTactic exact
NewDefinition AsciiTable

Introduction "
# Introduction
You've made a todo list, so you've begun to plan your party. Exhibit evidence that you're planning the party.
## Proposition Key:
`P` — You're **P**lanning a party
## Assumptions
`h : P` — Can be read as `h` is evidence for `P`\\
\\
On the one hand, you can think of `h` as a reference to the assumption `P`. On the other hand, given the flavour text above, you can imagine that `h` is the name you've give your todo list (because your todo list is evidence for the proposition that \"You're **P**lanning a party\")

# The Exact Tactic
The Exact tactic is — for now — the means through which you give the game your answer. It's your way of declaring that you're done. In this level, you're just going to being using one of the premises directly, but as you learn how to form expressions the `exact` tactic will accept those too.\\
\\
It's entered like this:
```
Goal: P
exact <<expression that evaluates to evidence for P>>
```
You can use the `exact` tactic to give `h` as your answer.\\
\\
⋆Spoilers!⋆ If you enter \"`exact h`\", you will have completed this level.

# Become Familiar with the User Interface!

# Proof State
Found in the middle bottom of the screen, the proof state tells you what objects exist, what assumptions are available, and what goal proposition you're trying to exhibit evidence for. Find the area of the screen with **Objects**, **Assumptions**, and **Goal**. I'll describe each shortly here.
## 1. Objects:
In this level, you'll notice that there is only one proposition. `P : Prop` is the game's way of telling you that it knows that `P` is a proposition. You can check out the **Proposition Key** above to learn what it's denoting in this level if you're interested.
## 2. Assumptions:
You'll notice that you have some evidence too. The shorthand for a proposition traditionally starts with a capital letter and the shorthand for evidence traditionally starts with a lowercase letter.
1. `h : P` — again, you can read this as `h` is evidence for `P`. If the line said `h : ¬P` instead, then that would be saying that `h` is evidence that you're not planning a party.
## 3. Goal:
The goal is always a proposition that you want to exhibit some evidence for. In this level, one of your assumptions already contains evidence for the goal. That will certainly not always be the case.
# Inventory
On the right of the screen is your inventory of tactics, definitions, and theorems. Once unlocked, you can click them to read about what they do.
"

/-- Exhibit evidence that you're planning a party. -/
Statement (P : Prop)(h : P) : P := by
  exact h

Conclusion "
Congratulations, not only have you started your todo list, you've learned how to exhibit the list as evidence that you've started planning the party.
"
