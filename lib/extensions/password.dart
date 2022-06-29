import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';

import '../crypto/pbkdf2.dart';
import '../tl/constructors/account.dart';
import '../tl/constructors/constructors.dart';
import '../utils.dart';

const SIZE_FOR_HASH = 256;

/**
 *
 *
 * @param prime{BigInteger}
 * @param g{BigInteger}
 */

/*
We don't support changing passwords yet
function checkPrimeAndGoodCheck(prime, g) {
    console.error('Unsupported function `checkPrimeAndGoodCheck` call. Arguments:', prime, g)

    const goodPrimeBitsCount = 2048
    if (prime < 0 || prime.bitLength() !== goodPrimeBitsCount) {
        throw new Error(`bad prime count ${prime.bitLength()},expected ${goodPrimeBitsCount}`)
    }
    // TODO this is kinda slow
    if (Factorizator.factorize(prime)[0] !== 1) {
        throw new Error('give "prime" is not prime')
    }
    if (g.eq(BigInt(2))) {
        if ((prime.remainder(BigInt(8))).neq(BigInt(7))) {
            throw new Error(`bad g ${g}, mod8 ${prime % 8}`)
        }
    } else if (g.eq(BigInt(3))) {
        if ((prime.remainder(BigInt(3))).neq(BigInt(2))) {
            throw new Error(`bad g ${g}, mod3 ${prime % 3}`)
        }
        // eslint-disable-next-line no-empty
    } else if (g.eq(BigInt(4))) {

    } else if (g.eq(BigInt(5))) {
        if (!([ BigInt(1), BigInt(4) ].includes(prime.remainder(BigInt(5))))) {
            throw new Error(`bad g ${g}, mod8 ${prime % 5}`)
        }
    } else if (g.eq(BigInt(6))) {
        if (!([ BigInt(19), BigInt(23) ].includes(prime.remainder(BigInt(24))))) {
            throw new Error(`bad g ${g}, mod8 ${prime % 24}`)
        }
    } else if (g.eq(BigInt(7))) {
        if (!([ BigInt(3), BigInt(5), BigInt(6) ].includes(prime.remainder(BigInt(7))))) {
            throw new Error(`bad g ${g}, mod8 ${prime % 7}`)
        }
    } else {
        throw new Error(`bad g ${g}`)
    }
    const primeSub1Div2 = (prime.subtract(BigInt(1))).divide(BigInt(2))
    if (Factorizator.factorize(primeSub1Div2)[0] !== 1) {
        throw new Error('(prime - 1) // 2 is not prime')
    }
}
*/
/**
 *
 * @param primeBytes{Buffer}
 * @param g{number}
 */
void checkPrimeAndGood(List<int> primeBytes, int g) {
  final goodPrime = List.from([
    0xc7,
    0x1c,
    0xae,
    0xb9,
    0xc6,
    0xb1,
    0xc9,
    0x04,
    0x8e,
    0x6c,
    0x52,
    0x2f,
    0x70,
    0xf1,
    0x3f,
    0x73,
    0x98,
    0x0d,
    0x40,
    0x23,
    0x8e,
    0x3e,
    0x21,
    0xc1,
    0x49,
    0x34,
    0xd0,
    0x37,
    0x56,
    0x3d,
    0x93,
    0x0f,
    0x48,
    0x19,
    0x8a,
    0x0a,
    0xa7,
    0xc1,
    0x40,
    0x58,
    0x22,
    0x94,
    0x93,
    0xd2,
    0x25,
    0x30,
    0xf4,
    0xdb,
    0xfa,
    0x33,
    0x6f,
    0x6e,
    0x0a,
    0xc9,
    0x25,
    0x13,
    0x95,
    0x43,
    0xae,
    0xd4,
    0x4c,
    0xce,
    0x7c,
    0x37,
    0x20,
    0xfd,
    0x51,
    0xf6,
    0x94,
    0x58,
    0x70,
    0x5a,
    0xc6,
    0x8c,
    0xd4,
    0xfe,
    0x6b,
    0x6b,
    0x13,
    0xab,
    0xdc,
    0x97,
    0x46,
    0x51,
    0x29,
    0x69,
    0x32,
    0x84,
    0x54,
    0xf1,
    0x8f,
    0xaf,
    0x8c,
    0x59,
    0x5f,
    0x64,
    0x24,
    0x77,
    0xfe,
    0x96,
    0xbb,
    0x2a,
    0x94,
    0x1d,
    0x5b,
    0xcd,
    0x1d,
    0x4a,
    0xc8,
    0xcc,
    0x49,
    0x88,
    0x07,
    0x08,
    0xfa,
    0x9b,
    0x37,
    0x8e,
    0x3c,
    0x4f,
    0x3a,
    0x90,
    0x60,
    0xbe,
    0xe6,
    0x7c,
    0xf9,
    0xa4,
    0xa4,
    0xa6,
    0x95,
    0x81,
    0x10,
    0x51,
    0x90,
    0x7e,
    0x16,
    0x27,
    0x53,
    0xb5,
    0x6b,
    0x0f,
    0x6b,
    0x41,
    0x0d,
    0xba,
    0x74,
    0xd8,
    0xa8,
    0x4b,
    0x2a,
    0x14,
    0xb3,
    0x14,
    0x4e,
    0x0e,
    0xf1,
    0x28,
    0x47,
    0x54,
    0xfd,
    0x17,
    0xed,
    0x95,
    0x0d,
    0x59,
    0x65,
    0xb4,
    0xb9,
    0xdd,
    0x46,
    0x58,
    0x2d,
    0xb1,
    0x17,
    0x8d,
    0x16,
    0x9c,
    0x6b,
    0xc4,
    0x65,
    0xb0,
    0xd6,
    0xff,
    0x9c,
    0xa3,
    0x92,
    0x8f,
    0xef,
    0x5b,
    0x9a,
    0xe4,
    0xe4,
    0x18,
    0xfc,
    0x15,
    0xe8,
    0x3e,
    0xbe,
    0xa0,
    0xf8,
    0x7f,
    0xa9,
    0xff,
    0x5e,
    0xed,
    0x70,
    0x05,
    0x0d,
    0xed,
    0x28,
    0x49,
    0xf4,
    0x7b,
    0xf9,
    0x59,
    0xd9,
    0x56,
    0x85,
    0x0c,
    0xe9,
    0x29,
    0x85,
    0x1f,
    0x0d,
    0x81,
    0x15,
    0xf6,
    0x35,
    0xb1,
    0x05,
    0xee,
    0x2e,
    0x4e,
    0x15,
    0xd0,
    0x4b,
    0x24,
    0x54,
    0xbf,
    0x6f,
    0x4f,
    0xad,
    0xf0,
    0x34,
    0xb1,
    0x04,
    0x03,
    0x11,
    0x9c,
    0xd8,
    0xe3,
    0xb9,
    0x2f,
    0xcc,
    0x5b,
  ]);
  if (const ListEquality().equals(goodPrime, primeBytes)) {
    if ([3, 4, 5, 7].contains(g)) {
      return; // It's good
    }
  }
  throw ("Changing passwords unsupported");
//checkPrimeAndGoodCheck(readBigIntFromBuffer(primeBytes, false), g)
}

/**
 *
 * @param number{BigInteger}
 * @param p{BigInteger}
 * @returns {boolean}
 */
bool isGoodLarge(BigInt number, BigInt p) {
  return number > BigInt.zero && p - number > BigInt.zero;
}

/**
 *
 * @param number {Buffer}
 * @returns {Buffer}
 */
List<int> numBytesForHash(List<int> number) {
  final list =
      List<int>.filled(SIZE_FOR_HASH - number.length, 0, growable: false);

  return [...list, ...number];
}

/**
 *
 * @param g {bigInt}
 * @returns {Buffer}
 */
List<int> bigNumForHash(BigInt g) {
  return readBufferFromBigInt(g, SIZE_FOR_HASH, little: false);
}

/**
 *
 * @param modexp {BigInteger}
 * @param prime {BigInteger}
 * @returns {Boolean}
 */
bool isGoodModExpFirst(BigInt modexp, BigInt prime) {
  final diff = prime - modexp;

  const minDiffBitsCount = 2048 - 64;
  const maxModExpSize = 256;

  return !(diff < BigInt.zero ||
      diff.bitLength < minDiffBitsCount ||
      modexp.bitLength < minDiffBitsCount ||
      ((modexp.bitLength + 7) / 8).floor() > maxModExpSize);
}

List<int> xor(List<int> a, List<int> b) {
  final length = min(a.length, b.length);

  for (int i = 0; i < length; i++) {
    a[i] = a[i] ^ b[i];
  }

  return a;
}

/**
 *
 * @param password{Buffer}
 * @param salt{Buffer}
 * @param iterations{number}
 * @returns {*}
 */

List<int> pbkdf2sha512(List<int> password, List<int> salt, int iterations) {
  final generator = PBKDF2(hashAlgorithm: sha512);
  return generator.generateKey(password, salt, iterations, 64);
}

/**
 *
 * @param algo {constructors.PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow}
 * @param password
 * @returns {Buffer|*}
 */
List<int> computeHash(
    PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow algo,
    String password) {
  final hash1 = sha256
      .convert([...algo.salt1, ...utf8.encode(password), ...algo.salt1]).bytes;
  final hash2 = sha256.convert([...algo.salt2, ...hash1, ...algo.salt2]).bytes;

  final hash3 = pbkdf2sha512(hash2, algo.salt1, 100000);

  return sha256.convert([...algo.salt2, ...hash3, ...algo.salt2]).bytes;
}

/**
 *
 * @param algo {constructors.PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow}
 * @param password
 */
computeDigest(
  PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow algo,
  String password,
) {
  try {
    checkPrimeAndGood(algo.p, algo.g);
  } catch (e) {
    throw ("bad p/g in password");
  }

  final value = modExp(
      BigInt.from(algo.g),
      readBigIntFromBuffer(computeHash(algo, password), little: false),
      readBigIntFromBuffer(algo.p, little: false));
  return bigNumForHash(value);
}

/**
 *
 * @param request {constructors.account.Password}
 * @param password {string}
 */
InputCheckPasswordSRP computeCheck(Password request, String password) {
  final algo = request.currentAlgo;
  if (!(algo
      is PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow)) {
    throw "Unsupported password algorithm ${algo?.runtimeType}";
  }
  final srp_B = request.srp_B;
  final srpId = request.srpId;
  if (srp_B == null || srpId == null) {
    throw "Undefined srp_b  ${request}";
  }
  final pwHash = computeHash(algo, password);
  final p = readBigIntFromBuffer(algo.p, little: false);
  final g = algo.g;
  final B = readBigIntFromBuffer(srp_B, little: false);
  try {
    checkPrimeAndGood(algo.p, g);
  } catch (e) {
    throw ("bad /g in password");
  }
  if (!isGoodLarge(B, p)) {
    throw ("bad b in check");
  }
  final x = readBigIntFromBuffer(pwHash, little: false);
  final pForHash = numBytesForHash(algo.p);
  final gForHash = bigNumForHash(BigInt.from(g));
  final bForHash = numBytesForHash(srp_B);
  final gX = modExp(BigInt.from(g), x, p);
  final k = readBigIntFromBuffer(
      sha256.convert([...pForHash, ...gForHash]).bytes,
      little: false);
  final kgX = bigIntMod(k * gX, p);
  final generateAndCheckRandom = () {
    final randomSize = 256;
// eslint-disable-next-line no-constant-condition
    while (true) {
      final random = generateRandomBytes(randomSize);
      final a = readBigIntFromBuffer(random, little: false);
      final A = modExp(BigInt.from(g), a, p);
      if (isGoodModExpFirst(A, p)) {
        final aForHash = bigNumForHash(A);
        final u = readBigIntFromBuffer(
            sha256.convert([...aForHash, ...bForHash]).bytes,
            little: false);

        if (u > (BigInt.zero)) {
          return {
            "a": a,
            "aForHash": aForHash,
            "u": u,
          };
        }
      }
    }
  };
  final res_ = generateAndCheckRandom();
  var a = res_["a"] as BigInt,
      aForHash = res_["aForHash"] as List<int>,
      u = res_["u"] as BigInt;
  final gB = bigIntMod(B - (kgX), p);
  if (!isGoodModExpFirst(gB, p)) {
    throw ("bad gB");
  }

  final ux = u * x;
  final aUx = a + ux;
  final S = modExp(gB, aUx, p);

  var K = sha256.convert(bigNumForHash(S)).bytes,
      pSha = sha256.convert(pForHash).bytes,
      gSha = sha256.convert(gForHash).bytes,
      salt1Sha = sha256.convert(algo.salt1).bytes,
      salt2Sha = sha256.convert(algo.salt2).bytes;
  final M1 = sha256.convert([
    ...xor(pSha, gSha),
    ...salt1Sha,
    ...salt2Sha,
    ...aForHash,
    ...bForHash,
    ...K,
  ]).bytes;

  return new InputCheckPasswordSRP(
    srpId: srpId,
    A: (aForHash),
    M1: M1,
  );
}

bigIntMod(BigInt n, BigInt m) {
  return ((n % m) + m) % (m);
}

BigInt modExp(BigInt a, BigInt b, BigInt n) {
  a = a % n;
  var result = BigInt.one;
  var x = a;
  while (b > BigInt.zero) {
    final leastSignificantBit = b % BigInt.two;
    b = b ~/ BigInt.two;
    if (leastSignificantBit == BigInt.one) {
      result = result * x;
      result = result % n;
    }
    x = x * x;
    x = x % n;
  }

  return result;
}
