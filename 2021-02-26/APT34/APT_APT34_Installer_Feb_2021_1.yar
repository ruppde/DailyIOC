rule APT_APT34_Installer_Feb_2021_1 {
   meta:
      description = "Detect Installer from APT34 group"
      author = "Arkbird_SOLG"
      reference = "Internal Research"
      date = "2021-02-26"
      level = "experimental"
      hash1 = "65a6afc027ff851bd325d8a4f2ab4f326dd8f2c230bfd49a213c5afc00df8e2c"
   strings:
        $s1 = "XAVVQxcVAVIfCBYWARQfEBldEU4ZF1JbUFJYCgpCTg==" fullword ascii
        $s2 = { 0b da 89 5c 24 40 40 38 3d 55 56 }
        $s3 = { 57 4e 44 31 23 31 2e 32 }
        $s4 = { 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 }
        $seq_Service = { 4c 8b dc 57 48 81 ec e0 02 00 00 48 c7 44 24 70 fe ff ff ff 49 89 5b 10 49 89 73 18 48 8b 05 65 12 0a 00 48 33 c4 48 89 84 24 d0 02 00 00 48 8b d9 48 89 4c 24 78 41 b8 04 01 00 00 49 8d 93 d8 fd ff ff 33 c9 ff 15 9d 20 07 00 85 c0 75 19 ff 15 33 21 07 00 8b d0 48 8d 0d 8a b6 08 00 e8 1d f7 ff ff e9 a5 01 00 00 33 f6 48 89 b4 24 90 00 00 00 48 89 b4 24 98 00 00 00 45 33 c0 33 d2 48 8d 8c 24 80 00 00 00 e8 d4 9f ff ff 66 39 b4 24 c0 00 00 00 75 05 44 8b c6 eb 1f 48 8d 84 24 c0 00 00 00 49 83 c8 ff 66 0f 1f 84 00 00 00 00 00 49 ff c0 66 42 39 34 40 75 f6 48 8d 94 24 c0 00 00 00 48 8d 8c 24 80 00 00 00 e8 41 05 00 00 90 4c 8b c3 48 8d 8c 24 a0 00 00 00 e8 60 0a 00 00 90 49 83 c9 ff 45 33 c0 48 8b d0 48 8d 8c 24 80 00 00 00 e8 a8 07 00 00 90 45 33 c0 b2 01 48 8d 8c 24 a0 00 00 00 e8 55 9f ff ff 33 d2 33 c9 41 b8 3f 00 0f 00 ff 15 d5 1e 07 00 48 8b f8 48 85 c0 75 19 ff 15 5f 20 07 00 8b d0 48 8d 0d de b5 08 00 e8 49 f6 ff ff e9 be 00 00 00 4c 8d 8c 24 80 00 00 00 48 83 bc 24 98 00 00 00 08 4c 0f 43 8c 24 80 00 00 00 48 8d 15 33 7a 0a 00 4c 8b c2 48 83 3d 40 7a 0a 00 08 4c 0f 43 05 20 7a 0a 00 48 0f 43 15 18 7a 0a 00 48 89 74 24 60 48 89 74 24 58 48 89 74 24 50 48 89 74 24 48 48 89 74 24 40 4c 89 4c 24 38 c7 44 24 30 01 00 00 00 c7 44 24 28 02 00 00 00 c7 44 24 20 10 00 00 00 41 b9 ff 01 0f 00 48 8b c8 ff 15 23 1e 07 00 48 8b f0 48 85 c0 75 16 ff 15 bd 1f 07 00 8b d0 48 8d 0d 5c b5 08 00 e8 a7 f5 ff ff eb 15 48 8d 0d 6e b5 08 00 e8 99 f5 ff ff 48 8b ce ff 15 e0 1d 07 00 48 8b cf ff 15 d7 1d 07 00 90 45 33 c0 b2 01 48 8d 8c 24 80 00 00 00 e8 54 9e ff ff 90 45 33 c0 b2 01 48 8b cb e8 46 9e ff ff 48 8b 8c 24 d0 02 00 00 48 33 cc e8 d6 94 02 00 4c 8d 9c 24 e0 02 00 00 49 8b 5b 18 49 8b 73 20 49 8b e3 5f }
        $seq_ConnectC2 = { 33 c0 48 89 44 24 70 48 89 44 24 78 66 89 7c 24 70 8d 48 35 ff 15 2f 62 07 00 66 89 44 24 72 48 8b cb e8 ea dc ff ff 48 8b c8 ff 15 29 62 07 00 89 44 24 74 49 8b cd e8 d5 dc ff ff 48 8b d0 c7 44 24 28 10 00 00 00 48 8d 44 24 70 48 89 44 24 20 45 33 c9 45 8b 45 10 49 8b cc ff 15 e0 61 07 00 83 f8 ff 75 12 45 33 c0 48 8d 15 6b cb 08 00 48 8b ce e8 79 de ff ff 4c 89 a4 24 a8 00 00 00 c7 84 24 a0 00 00 00 01 00 00 00 48 c7 44 24 38 0a 00 00 00 41 8d 4c 24 01 48 8d 44 24 38 48 89 44 24 20 45 33 c9 45 33 c0 48 8d 94 24 a0 00 00 00 ff 15 aa 61 07 00 83 f8 01 0f 94 c0 84 c0 0f 84 0f 01 00 00 45 33 c9 41 b8 00 02 00 00 48 8d 94 24 b0 02 00 00 49 8b cc ff 15 72 61 07 00 4c 63 c0 85 c0 0f 8e ea 00 00 00 41 8b c8 49 8b d0 49 8b c0 45 85 c0 0f 8e d8 00 00 00 0f 1f 44 00 00 80 bc 04 b0 02 00 00 00 0f 85 b7 00 00 00 48 3b d0 0f 84 ae 00 00 00 85 c9 0f 84 b4 00 00 00 83 c1 03 41 3b c8 0f 8d a8 00 00 00 48 8d 9c 24 b0 02 00 00 48 03 da 48 63 c1 48 8d bc 24 b0 02 00 00 48 03 f8 4c 89 b4 24 90 00 00 00 4c 89 b4 24 98 00 00 00 45 33 c0 33 d2 48 8d 8c 24 80 00 00 00 e8 0a dd ff ff 48 3b fb 74 17 48 2b df 4c 8b c3 48 8b d7 48 8d 8c 24 80 00 00 00 e8 6f dd ff ff 90 48 8d 84 24 80 00 00 00 48 3b f0 74 18 49 83 c9 ff 45 33 c0 48 8d 94 24 80 00 00 00 48 8b ce e8 2a de ff ff 90 45 33 c0 b2 01 48 8d 8c 24 80 00 00 00 e8 b7 dc ff ff 48 8b 5c 24 48 bf }
        $seq_RegisterEvent = { 40 53 48 83 ec 20 48 83 3d 5a 79 0a 00 08 48 8d 1d 3b 79 0a 00 48 8b cb 48 8d 15 91 01 00 00 48 0f 43 0d 29 79 0a 00 ff 15 93 1d 07 00 48 89 05 44 77 0a 00 48 8b c8 48 85 c0 75 2d 48 83 3d 24 79 0a 00 08 48 0f 43 1d 04 79 0a 00 48 8b d3 ff 15 7b 1d 07 00 48 85 c0 74 62 48 8b c8 ff 15 35 1d 07 00 48 83 c4 20 5b c3 33 c0 c7 05 db 76 0a 00 10 00 00 00 48 89 05 e0 76 0a 00 48 8d 15 cd 76 0a 00 8b 05 17 1c 0a 00 89 05 d5 76 0a 00 ff c0 89 05 09 1c 0a 00 48 c7 05 b2 76 0a 00 02 00 00 00 c7 05 bc 76 0a 00 b8 0b 00 00 ff 15 06 1d 07 00 48 83 c4 20 5b }
   condition:
      uint16(0) == 0x5a4d and filesize > 80KB and all of ($s*) and 2 of ($seq*) 
}
