class Note { final int oNum; final int line; NoteState state = NoteState.ready; Note(this.oNum, this.line); } enum NoteState { ready, tapped, missed }
