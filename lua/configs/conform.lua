local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    python = { "black", "isort" },
  },

  formatters = {
    -- C & C++
    ["clang-format"] = {
      prepend_args = {
        "-style={ \
          AccessModifierOffset: -4, \
          AlignAfterOpenBracket: Align, \
          AlignConsecutiveAssignments: true, \
          AlignConsecutiveDeclarations: true, \
          AlignConsecutiveMacros: true, \
          AlignEscapedNewlines: Right, \
          AlignOperands: true, \
          AlignTrailingComments: true, \
          AllowAllArgumentsOnNextLine: false, \
          AllowAllConstructorInitializersOnNextLine: true, \
          AllowAllParametersOfDeclarationOnNextLine: false, \
          AllowShortBlocksOnASingleLine: Never, \
          AllowShortCaseLabelsOnASingleLine: false, \
          AllowShortFunctionsOnASingleLine: None, \
          AllowShortIfStatementsOnASingleLine: false, \
          AllowShortLoopsOnASingleLine: false, \
          AlwaysBreakAfterDefinitionReturnType: None, \
          AlwaysBreakAfterReturnType: None, \
          AlwaysBreakBeforeMultilineStrings: false, \
          AlwaysBreakTemplateDeclarations: Yes, \
          BinPackArguments: false, \
          BinPackParameters: false, \
          BraceWrapping: { \
            AfterCaseLabel: false, \
            AfterClass: true, \
            AfterControlStatement: true, \
            AfterEnum: true, \
            AfterFunction: true, \
            AfterNamespace: true, \
            AfterObjCDeclaration: false, \
            AfterStruct: true, \
            AfterUnion: true, \
            AfterExternBlock: false, \
            BeforeCatch: true, \
            BeforeElse: true, \
            IndentBraces: false, \
            SplitEmptyFunction: false, \
            SplitEmptyRecord: false, \
            SplitEmptyNamespace: false, \
            BeforeLambdaBody: false, \
            BeforeWhile: false \
          }, \
          BreakBeforeBinaryOperators: true, \
          BreakBeforeBraces: Custom, \
          BreakBeforeTernaryOperators: true, \
          BreakAfterJavaFieldAnnotations: false, \
          BreakStringLiterals: true, \
          ColumnLimit: 120, \
          CommentPragmas: '^ IWYU pragma:', \
          ConstructorInitializerAllOnOneLineOrOnePerLine: true, \
          ConstructorInitializerIndentWidth: 2, \
          ContinuationIndentWidth: 2, \
          Cpp11BracedListStyle: true, \
          DerivePointerAlignment: true, \
          ExperimentalAutoDetectBinPacking: false, \
          FixNamespaceComments: true, \
          ForEachMacros: [foreach, Q_FOREACH, BOOST_FOREACH], \
          IncludeBlocks: Regroup, \
          IncludeCategories: [ \
            { Regex: '^<.*\\.hpp>', Priority: 3 }, \
            { Regex: '^<.*\\.h>', Priority: 2 }, \
            { Regex: '^<.*>', Priority: 1 }, \
            { Regex: '.*', Priority: 4 } \
          ], \
          IncludeIsMainSourceRegex: .inc, \
          IndentCaseLabels: true, \
          IndentWidth: 4, \
          JavaScriptQuotes: Leave, \
          JavaScriptWrapImports: true, \
          KeepEmptyLinesAtTheStartOfBlocks: false, \
          Language: Cpp, \
          MacroBlockBegin: '', \
          MacroBlockEnd: '', \
          MaxEmptyLinesToKeep: 1, \
          NamespaceIndentation: All, \
          ObjCBlockIndentWidth: 2, \
          ObjCSpaceAfterProperty: false, \
          ObjCSpaceBeforeProtocolList: false, \
          PenaltyBreakBeforeFirstCallParameter: 1, \
          PenaltyBreakComment: 120, \
          PenaltyBreakFirstLessLess: 120, \
          PenaltyBreakString: 1000, \
          PenaltyExcessCharacter: 1000000, \
          PenaltyReturnTypeOnItsOwnLine: 200, \
          PointerAlignment: Left, \
          RawStringFormats: [ \
            { Language: Cpp, Delimiters: [cc, CC, cpp, Cpp, CPP, 'c++', 'C++'], CanonicalDelimiter: '', BasedOnStyle: google }, \
            { Language: TextProto, Delimiters: [pb, PB, proto, PROTO], EnclosingFunctions: [ \
              EqualsProto, EquivToProto, PARSE_PARTIAL_TEXT_PROTO, PARSE_TEST_PROTO, PARSE_TEXT_PROTO, \
              ParseTextOrDie, ParseTextProtoOrDie, ParseTestProto, ParsePartialTestProto \
            ], CanonicalDelimiter: '', BasedOnStyle: google } \
          ], \
          ReflowComments: true, \
          SortIncludes: true, \
          SpaceAfterCStyleCast: true, \
          SpaceAfterTemplateKeyword: false, \
          SpaceBeforeAssignmentOperators: true, \
          SpaceBeforeParens: ControlStatements, \
          SpaceInEmptyParentheses: false, \
          SpacesBeforeTrailingComments: 3, \
          SpacesInAngles: false, \
          SpacesInContainerLiterals: true, \
          SpacesInCStyleCastParentheses: true, \
          SpacesInParentheses: false, \
          SpacesInSquareBrackets: false, \
          Standard: c++17, \
          TabWidth: 4, \
          TypenameMacros: [STACK_OF, LIST], \
          UseTab: Never \
        }",
      },
    },
    -- Python
    black = {
      prepend_args = {
        "--fast",
        "--line-length",
        "80",
      },
    },
    isort = {
      prepend_args = {
        "--profile",
        "black",
      },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 200,
    lsp_fallback = true,
  },
}

return options
