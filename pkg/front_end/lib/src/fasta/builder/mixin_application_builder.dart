// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library fasta.mixin_application_builder;

import 'package:kernel/ast.dart' show InterfaceType, Supertype, TypedefType;

import '../problems.dart' show unsupported;
import '../source/source_library_builder.dart';

import 'library_builder.dart';
import 'nullability_builder.dart';
import 'type_builder.dart';
import 'type_variable_builder.dart';

class MixinApplicationBuilder extends TypeBuilder {
  final TypeBuilder? supertype;
  final List<TypeBuilder> mixins;
  @override
  final Uri fileUri;
  @override
  final int charOffset;
  Supertype? builtType;

  List<TypeVariableBuilder>? typeVariables;

  MixinApplicationBuilder(
      this.supertype, this.mixins, this.fileUri, this.charOffset);

  @override
  String? get name => null;

  @override
  NullabilityBuilder get nullabilityBuilder {
    return unsupported("nullabilityBuilder", -1, null);
  }

  @override
  String get debugName => "MixinApplicationBuilder";

  @override
  bool get isVoidType => false;

  @override
  StringBuffer printOn(StringBuffer buffer) {
    buffer.write(supertype);
    buffer.write(" with ");
    bool first = true;
    for (TypeBuilder t in mixins) {
      if (!first) buffer.write(", ");
      first = false;
      t.printOn(buffer);
    }
    return buffer;
  }

  @override
  InterfaceType build(LibraryBuilder library,
      {TypedefType? origin, bool? nonInstanceContext}) {
    int charOffset = -1; // TODO(ahe): Provide these.
    Uri? fileUri = null; // TODO(ahe): Provide these.
    return unsupported("build", charOffset, fileUri);
  }

  @override
  Supertype buildSupertype(
      LibraryBuilder library, int charOffset, Uri fileUri) {
    return unsupported("buildSupertype", charOffset, fileUri);
  }

  @override
  Supertype buildMixedInType(
      LibraryBuilder library, int charOffset, Uri fileUri) {
    return unsupported("buildMixedInType", charOffset, fileUri);
  }

  @override
  MixinApplicationBuilder withNullabilityBuilder(
      NullabilityBuilder nullabilityBuilder) {
    return unsupported("withNullabilityBuilder", -1, null);
  }

  @override
  MixinApplicationBuilder clone(
      List<TypeBuilder> newTypes,
      SourceLibraryBuilder contextLibrary,
      TypeParameterScopeBuilder contextDeclaration) {
    int charOffset = -1; // TODO(dmitryas): Provide these.
    Uri? fileUri = null; // TODO(dmitryas): Provide these.
    return unsupported("clone", charOffset, fileUri);
  }
}
