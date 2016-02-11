visitor
visitDocument: aDocument
	stream nextPut: (PRWikiWriter write: aDocument).