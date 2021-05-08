// Mocks generated by Mockito 5.0.7 from annotations
// in wger/test/workout_form_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i14;
import 'dart:ui' as _i16;

import 'package:http/src/client.dart' as _i5;
import 'package:http/src/response.dart' as _i12;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wger/models/exercises/exercise.dart' as _i15;
import 'package:wger/models/workouts/day.dart' as _i7;
import 'package:wger/models/workouts/log.dart' as _i11;
import 'package:wger/models/workouts/repetition_unit.dart' as _i3;
import 'package:wger/models/workouts/session.dart' as _i10;
import 'package:wger/models/workouts/set.dart' as _i8;
import 'package:wger/models/workouts/setting.dart' as _i9;
import 'package:wger/models/workouts/weight_unit.dart' as _i2;
import 'package:wger/models/workouts/workout_plan.dart' as _i6;
import 'package:wger/providers/auth.dart' as _i4;
import 'package:wger/providers/workout_plans.dart' as _i13;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: prefer_const_constructors

// ignore_for_file: avoid_redundant_argument_values

class _FakeWeightUnit extends _i1.Fake implements _i2.WeightUnit {}

class _FakeRepetitionUnit extends _i1.Fake implements _i3.RepetitionUnit {}

class _FakeAuth extends _i1.Fake implements _i4.Auth {}

class _FakeClient extends _i1.Fake implements _i5.Client {}

class _FakeWorkoutPlan extends _i1.Fake implements _i6.WorkoutPlan {}

class _FakeDay extends _i1.Fake implements _i7.Day {}

class _FakeSet extends _i1.Fake implements _i8.Set {}

class _FakeSetting extends _i1.Fake implements _i9.Setting {}

class _FakeWorkoutSession extends _i1.Fake implements _i10.WorkoutSession {}

class _FakeLog extends _i1.Fake implements _i11.Log {}

class _FakeResponse extends _i1.Fake implements _i12.Response {}

/// A class which mocks [WorkoutPlans].
///
/// See the documentation for Mockito's code generation for more information.
class MockWorkoutPlans extends _i1.Mock implements _i13.WorkoutPlans {
  MockWorkoutPlans() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i6.WorkoutPlan> get items =>
      (super.noSuchMethod(Invocation.getter(#items),
          returnValue: <_i6.WorkoutPlan>[]) as List<_i6.WorkoutPlan>);
  @override
  List<_i2.WeightUnit> get weightUnits =>
      (super.noSuchMethod(Invocation.getter(#weightUnits),
          returnValue: <_i2.WeightUnit>[]) as List<_i2.WeightUnit>);
  @override
  _i2.WeightUnit get defaultWeightUnit =>
      (super.noSuchMethod(Invocation.getter(#defaultWeightUnit),
          returnValue: _FakeWeightUnit()) as _i2.WeightUnit);
  @override
  List<_i3.RepetitionUnit> get repetitionUnits =>
      (super.noSuchMethod(Invocation.getter(#repetitionUnits),
          returnValue: <_i3.RepetitionUnit>[]) as List<_i3.RepetitionUnit>);
  @override
  _i3.RepetitionUnit get defaultRepetitionUnit =>
      (super.noSuchMethod(Invocation.getter(#defaultRepetitionUnit),
          returnValue: _FakeRepetitionUnit()) as _i3.RepetitionUnit);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i4.Auth get auth =>
      (super.noSuchMethod(Invocation.getter(#auth), returnValue: _FakeAuth())
          as _i4.Auth);
  @override
  set auth(_i4.Auth? _auth) =>
      super.noSuchMethod(Invocation.setter(#auth, _auth),
          returnValueForMissingStub: null);
  @override
  _i5.Client get client => (super.noSuchMethod(Invocation.getter(#client),
      returnValue: _FakeClient()) as _i5.Client);
  @override
  set client(_i5.Client? _client) =>
      super.noSuchMethod(Invocation.setter(#client, _client),
          returnValueForMissingStub: null);
  @override
  _i6.WorkoutPlan findById(int? id) =>
      (super.noSuchMethod(Invocation.method(#findById, [id]),
          returnValue: _FakeWorkoutPlan()) as _i6.WorkoutPlan);
  @override
  int findIndexById(int? id) => (super
          .noSuchMethod(Invocation.method(#findIndexById, [id]), returnValue: 0)
      as int);
  @override
  void setCurrentPlan(int? id) =>
      super.noSuchMethod(Invocation.method(#setCurrentPlan, [id]),
          returnValueForMissingStub: null);
  @override
  void resetCurrentPlan() =>
      super.noSuchMethod(Invocation.method(#resetCurrentPlan, []),
          returnValueForMissingStub: null);
  @override
  _i14.Future<void> fetchAndSetAllPlans() =>
      (super.noSuchMethod(Invocation.method(#fetchAndSetAllPlans, []),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<void> fetchAndSetWorkoutPlan(int? workoutId) => (super
      .noSuchMethod(Invocation.method(#fetchAndSetWorkoutPlan, [workoutId]),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<_i6.WorkoutPlan> addWorkout(_i6.WorkoutPlan? workout) =>
      (super.noSuchMethod(Invocation.method(#addWorkout, [workout]),
              returnValue: Future<_i6.WorkoutPlan>.value(_FakeWorkoutPlan()))
          as _i14.Future<_i6.WorkoutPlan>);
  @override
  _i14.Future<void> editWorkout(_i6.WorkoutPlan? workout) =>
      (super.noSuchMethod(Invocation.method(#editWorkout, [workout]),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<void> deleteWorkout(int? id) =>
      (super.noSuchMethod(Invocation.method(#deleteWorkout, [id]),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<Map<String, dynamic>> fetchLogData(
          _i6.WorkoutPlan? workout, _i15.Exercise? exercise) =>
      (super.noSuchMethod(Invocation.method(#fetchLogData, [workout, exercise]),
              returnValue:
                  Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i14.Future<Map<String, dynamic>>);
  @override
  _i14.Future<void> fetchAndSetRepetitionUnits() =>
      (super.noSuchMethod(Invocation.method(#fetchAndSetRepetitionUnits, []),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<void> fetchAndSetWeightUnits() =>
      (super.noSuchMethod(Invocation.method(#fetchAndSetWeightUnits, []),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<void> fetchAndSetUnits() =>
      (super.noSuchMethod(Invocation.method(#fetchAndSetUnits, []),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<_i7.Day> addDay(_i7.Day? day, _i6.WorkoutPlan? workout) =>
      (super.noSuchMethod(Invocation.method(#addDay, [day, workout]),
              returnValue: Future<_i7.Day>.value(_FakeDay()))
          as _i14.Future<_i7.Day>);
  @override
  _i14.Future<void> deleteDay(_i7.Day? day) =>
      (super.noSuchMethod(Invocation.method(#deleteDay, [day]),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<_i8.Set> addSet(_i8.Set? workoutSet) => (super.noSuchMethod(
      Invocation.method(#addSet, [workoutSet]),
      returnValue: Future<_i8.Set>.value(_FakeSet())) as _i14.Future<_i8.Set>);
  @override
  _i14.Future<void> fetchComputedSettings(_i8.Set? workoutSet) => (super
      .noSuchMethod(Invocation.method(#fetchComputedSettings, [workoutSet]),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<String> fetchSmartText(
          _i8.Set? workoutSet, _i15.Exercise? exercise) =>
      (super.noSuchMethod(
          Invocation.method(#fetchSmartText, [workoutSet, exercise]),
          returnValue: Future<String>.value('')) as _i14.Future<String>);
  @override
  _i14.Future<void> deleteSet(_i8.Set? workoutSet) =>
      (super.noSuchMethod(Invocation.method(#deleteSet, [workoutSet]),
          returnValue: Future<void>.value(null),
          returnValueForMissingStub: Future.value()) as _i14.Future<void>);
  @override
  _i14.Future<_i9.Setting> addSetting(_i9.Setting? workoutSetting) =>
      (super.noSuchMethod(Invocation.method(#addSetting, [workoutSetting]),
              returnValue: Future<_i9.Setting>.value(_FakeSetting()))
          as _i14.Future<_i9.Setting>);
  @override
  _i14.Future<dynamic> fetchSessionData() =>
      (super.noSuchMethod(Invocation.method(#fetchSessionData, []),
          returnValue: Future<dynamic>.value(null)) as _i14.Future<dynamic>);
  @override
  _i14.Future<_i10.WorkoutSession> addSession(_i10.WorkoutSession? session) =>
      (super.noSuchMethod(Invocation.method(#addSession, [session]),
              returnValue:
                  Future<_i10.WorkoutSession>.value(_FakeWorkoutSession()))
          as _i14.Future<_i10.WorkoutSession>);
  @override
  _i14.Future<_i11.Log> addLog(_i11.Log? log) =>
      (super.noSuchMethod(Invocation.method(#addLog, [log]),
              returnValue: Future<_i11.Log>.value(_FakeLog()))
          as _i14.Future<_i11.Log>);
  @override
  void addListener(_i16.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i16.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
  @override
  dynamic makeUrl(String? path,
          {int? id, String? objectMethod, Map<String, dynamic>? query}) =>
      super.noSuchMethod(Invocation.method(#makeUrl, [path],
          {#id: id, #objectMethod: objectMethod, #query: query}));
  @override
  _i14.Future<Map<String, dynamic>> fetch(Uri? uri) => (super.noSuchMethod(
          Invocation.method(#fetch, [uri]),
          returnValue: Future<Map<String, dynamic>>.value(<String, dynamic>{}))
      as _i14.Future<Map<String, dynamic>>);
  @override
  _i14.Future<Map<String, dynamic>> post(
          Map<String, dynamic>? data, Uri? uri) =>
      (super.noSuchMethod(Invocation.method(#post, [data, uri]),
              returnValue:
                  Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i14.Future<Map<String, dynamic>>);
  @override
  _i14.Future<Map<String, dynamic>> patch(
          Map<String, dynamic>? data, Uri? uri) =>
      (super.noSuchMethod(Invocation.method(#patch, [data, uri]),
              returnValue:
                  Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i14.Future<Map<String, dynamic>>);
  @override
  _i14.Future<_i12.Response> deleteRequest(String? url, int? id) =>
      (super.noSuchMethod(Invocation.method(#deleteRequest, [url, id]),
              returnValue: Future<_i12.Response>.value(_FakeResponse()))
          as _i14.Future<_i12.Response>);
}