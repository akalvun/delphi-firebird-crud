# Products Catalog — Delphi + Firebird Demo

A small desktop CRUD application built with **Delphi (VCL)** and **FireDAC**,
backed by an **embedded Firebird 5.0** database. It manages a simple product
catalog: create, read, update, delete and search records.

This is a portfolio project demonstrating clean database access, schema
bootstrapping and a code-built VCL UI — no external database server required.

## Features

- Full CRUD on a `PRODUCTS` table (code, name, price, quantity)
- Live search by name or code
- **Zero-setup database**: the app creates the `.fdb` file and the schema on
  first run, then seeds a few demo rows
- Embedded Firebird — nothing to install, the database is just a file next to
  the executable
- Parameterised queries throughout (no string concatenation of user input)

## Tech stack

- Delphi (VCL), FireDAC
- Firebird 5.0 Embedded
- SQL dialect 3, UTF-8, `IDENTITY` primary key

## Project structure

```
CatalogDemo.dpr   Project file
MainForm.pas      Main form: connection, schema, CRUD logic, code-built UI
MainForm.dfm      Minimal form definition (UI is created in code)
schema.sql        Reference DDL (the app creates this automatically)
```

## How to run

1. Open `CatalogDemo.dpr` in RAD Studio.
2. Set the target platform to **Win64**.
3. Place the Firebird 5.0 Embedded runtime files next to the compiled
   executable (see below).
4. Build and run. The database `catalog.fdb` is created on first launch.

### Firebird Embedded runtime files

Download the **Firebird 5.0 x64 ZIP** kit (not the installer) and copy the
following into the output folder, next to the `.exe`:

- `fbclient.dll`
- `firebird.msg`
- all `icu*.dll` files
- the entire `plugins\` folder
- the entire `intl\` folder

> The bitness must match: a **64-bit** application needs the **64-bit**
> `fbclient.dll`. Mismatched bitness is the most common embedded-Firebird error.

Default credentials are `SYSDBA` / `masterkey` (ignored in embedded mode but
kept for portability to a server).

## License

MIT — see [LICENSE](LICENSE).
