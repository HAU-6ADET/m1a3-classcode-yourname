# Module 1 – Activity 3 – Dart I/O (Dart)

Practice reading input from the user and printing output.

## What to do

### 1. Fill in your details

Open `student.json` and fill in every field (use the **class code** your
instructor gave you):

```json
{
  "classCode": "1234",
  "fullName": "Juan Dela Cruz",
  "studentNumber": "2026-12345",
  "studentEmail": "juan.delacruz@hau.edu.ph",
  "personalEmail": "juan@example.com",
  "githubAccount": "juandelacruz"
}
```

### 2. Write the program

Open [`bin/age.dart`](bin/age.dart). The program must:

1. Ask the user for their **nickname**.
2. Ask the user for their **current age**.
3. Display a message showing **how many years** they have before they reach
   **100** (that is, `100 - age`).

**Input order matters** (the autograder feeds input in this order): first the
**nickname**, then the **age**.

Run it yourself:

```bash
dart run bin/age.dart
```

## Running the test

```bash
dart pub get
dart test
```

This activity is graded by **8 tests** (1 point each). They check:

- ✅ each of the 6 fields in `student.json` is filled in (6 tests)
- ✅ the program prints the correct remaining years for two ages: `25` → `75`
  and `40` → `60` (2 tests)

Each part is graded independently, so you earn partial credit for the parts
you finish.

## Submitting on Canvas

When the test passes locally, **commit and push**:

```bash
git add -A
git commit -m "Activity 3 complete"
git push
```

Pushing triggers the **Autograde** workflow. To confirm it passed:

1. Open your repo on GitHub and click the **Actions** tab.
2. Open the latest **Autograde** run and confirm the green ✅ check
   and the "8 / 8 tests passed" summary.

Then submit **both** on Canvas:

1. **A screenshot** of the green Autograde run.
2. **The link to that Actions run** (copy the URL from your browser).
