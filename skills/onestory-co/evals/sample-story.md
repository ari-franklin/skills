# Show pickup block reason to store associates

## Type
user story

## Context
Store associates need to understand why an online pickup order is blocked because today they only see a generic failure and often have to call support. This slows down resolution and frustrates both associates and customers waiting on the order.

## Definition of Done
- Given a store associate is viewing a blocked pickup order
  When the order cannot proceed because of a known validation or inventory condition
  Then the associate sees a clear reason for the block in the order workflow
- Given a store associate sees the block reason
  When they take the next expected action
  Then they can resolve or escalate the issue without calling support for routine cases

## Notes
- Keep this lightweight enough to seed `design.md`
