{ mkDerivation, aeson-pretty, appendful-persistent, async
, autodocodec, autodocodec-yaml, base, bevel-api
, bevel-api-server-data, bevel-api-server-gen, bevel-client
, bevel-client-data, bevel-client-data-gen, bevel-data, brick
, bytestring, conduit, containers, cookie, criterion, cursor
, cursor-brick, envparse, esqueleto, filelock, filepath
, genvalidity, genvalidity-sydtest, genvalidity-text
, genvalidity-time, hostname, http-client, http-client-tls, lib
, monad-logger, mtl, optparse-applicative, path, path-io
, persistent, persistent-pagination, persistent-sqlite, QuickCheck
, servant-client, sydtest, sydtest-discover, text, time
, typed-process, unix, unliftio, vty, yaml
}:
mkDerivation {
  pname = "bevel-cli";
  version = "0.0.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson-pretty appendful-persistent async autodocodec
    autodocodec-yaml base bevel-api bevel-api-server-data bevel-client
    bevel-client-data bevel-data brick bytestring conduit containers
    cookie cursor cursor-brick envparse esqueleto filelock filepath
    hostname http-client http-client-tls monad-logger mtl
    optparse-applicative path path-io persistent persistent-pagination
    persistent-sqlite servant-client text time unix unliftio vty yaml
  ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [
    async base bevel-api bevel-api-server-data bevel-api-server-gen
    bevel-client-data bevel-client-data-gen genvalidity-sydtest
    genvalidity-text genvalidity-time monad-logger path path-io
    persistent-sqlite QuickCheck servant-client sydtest text
    typed-process
  ];
  testToolDepends = [ sydtest-discover ];
  benchmarkHaskellDepends = [
    base bevel-client-data bevel-client-data-gen bevel-data conduit
    criterion genvalidity monad-logger path path-io persistent
    persistent-sqlite QuickCheck text time
  ];
  homepage = "https://github.com/NorfairKing/bevel#readme";
  license = lib.licenses.unfree;
  hydraPlatforms = lib.platforms.none;
  mainProgram = "bevel";
}
