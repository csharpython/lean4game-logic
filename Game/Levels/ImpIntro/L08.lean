import Game.Metadata

World "ImpIntro"
Level 8
Title "Distribute"

Introduction "
# Go buy chips and dip!
- If you go shopping, then you'll buy chips.
- If you go shopping, then you'll buy dip.
- ∴ If you go shopping, you'll buy chips and dip
# Proposition Key:
- `C` — You buy chips
- `D` — You buy dip
- `S` — You go shopping
"

/-- → distributes over ∧ --/
Statement (R S : Prop) (h : (S → C) ∧ (S → D)) : S → C ∧ D := by
  exact λs ↦ ⟨h.left s, h.right s⟩

Conclusion "
You definitely have the knack of providing conditional arguements
"
