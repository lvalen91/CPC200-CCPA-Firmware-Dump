# Git hooks

`.git/hooks/` is not version-controlled, so a fresh clone starts with no protection. Install:

    cp ocbm/scripts/hooks/pre-push .git/hooks/pre-push && chmod 755 .git/hooks/pre-push

## `pre-push` — block Claude session references

This repository is **public**. A Claude conversation/session link is an immediate PII exposure
the moment it lands here: transcripts can contain file paths, hostnames, device serials, MAC
addresses, network addresses and personal details, and neither the link nor the transcript
behind it can be reliably unpublished once indexed or cloned.

The hook scans **only the commits being pushed** — both commit messages and added content, since
a link pasted into a README is the same exposure — and refuses the push if it finds one.
Pre-existing history does not block new work. `Co-Authored-By` is deliberately not matched: it
carries no conversation reference and is fine to publish.

This matters most at sync time. The private repo that feeds this one carries ~145 such trailers
in its own history, so the eventual sync from it is precisely when this would happen again.
Remembering to check is not a control; the hook is.

Two trailers reached `origin/main` before this existed (`ff1acdb`, `a70453a`). To clean commit
messages before publishing a range:

    git filter-branch -f --msg-filter 'grep -vi "^<trailer-key>:"' <base>..HEAD

where `<trailer-key>` is the trailer git appends; the hook names it when it fires. The hook
deliberately does not reproduce the full pattern here, because matching its own documentation
is how the first version blocked its own publication.
