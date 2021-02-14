foreach ($file in get-ChildItem *.ps1) {
    Echo $file.name
}