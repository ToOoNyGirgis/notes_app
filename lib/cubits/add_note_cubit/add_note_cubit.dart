import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color=const Color(0xfff9b4ab);

  addNote(NoteModel note) async {
    note.color=color.value;
    emit(AddNoteLoading());
   try {
     var noteBox = Hive.box<NoteModel>(kNoteBox);
       await noteBox.add(note);
       emit(AddNoteSuccess());
   } on Exception catch (e) {
     emit(AddNoteFailure(errMessage: e.toString()));
   }
  }
}
