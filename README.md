# FollowFlow

Νέο project — ξεκινάμε καθαρά από εδώ.

Το προηγούμενο project (PressFINDme) παραμένει στο Desktop στον φάκελο PressFINDme αν το χρειαστείς· μπορείς να τον διαγράψεις εσύ χειροκίνητα όταν είσαι σίγουρος.

## Ανοιγμα στο Cursor

**File → Open Folder →** C:\Users\Lefteris\Desktop\FollowFlow

## Git

- Remote: **https://github.com/wegivesol/FollowFlow** (ιδιωτικό).

## Save στο τέλος κάθε συνεδρίας

Από φάκελο `FollowFlow`:

```powershell
npm run save
```

Με μήνυμα:

```powershell
npm run save -- "τι άλλαξα"
```

## GitHub CLI (`gh`) στο PowerShell

Αν γράφει «gh δεν αναγνωρίζεται», πριν τρέξεις `gh`:

```powershell
$env:Path += ";C:\Program Files\GitHub CLI"
```

(Ή κλείσε και ξανάνοιξε το Cursor ώστε να φορτώσει το User PATH.)
