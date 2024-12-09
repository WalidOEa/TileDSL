{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,633) ([62976,20479,3,26697,62976,20479,3,26697,0,0,65532,1030,62976,20479,3,26697,0,0,0,64,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,0,0,0,2048,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,0,0,0,64,0,0,0,2048,62976,20479,3,26697,62976,20479,3,26697,0,0,0,64,0,0,0,64,0,0,0,0,0,0,0,0,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65532,1030,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,0,0,65532,1158,0,0,0,0,0,0,0,0,0,0,0,2048,62976,20479,3,26697,62976,20479,65535,27727,62976,20479,65535,27727,62976,20479,3,26697,62976,20479,3,26697,62976,20479,65535,27727,0,0,49152,6,0,0,49152,6,0,0,49152,6,0,0,0,0,0,0,49152,6,62976,20479,65535,27727,62976,20479,65535,27727,62976,20479,65535,27727,62976,20479,65535,27727,62976,20479,65535,27727,0,0,0,2048,0,0,65532,1046,62976,20479,3,26697,0,0,0,256,0,0,65292,6,0,0,65292,6,0,0,49152,6,0,0,49152,6,0,0,65292,6,0,0,65292,6,0,0,65532,1286,0,0,65292,6,0,0,49152,6,0,0,49152,6,0,0,65532,1158,0,0,0,512,0,0,0,0,0,0,65532,6,0,0,0,0,0,0,32768,4,0,0,0,4,0,0,32768,6,0,0,57100,6,0,0,53004,6,0,0,49932,6,0,0,51980,6,0,0,49152,6,0,0,49664,6,0,0,65484,6,0,0,65484,6,0,0,65484,6,0,0,65484,6,0,0,49920,6,0,0,49928,6,480,0,0,0,0,4096,0,0,62976,20479,3,26697,0,0,0,2048,0,0,65532,1062,0,0,0,0,0,0,0,512,0,0,65532,1158,0,0,0,16,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,480,0,0,0,0,0,0,4096,62976,20479,65535,27727,0,0,65532,1062,0,0,65532,1158,0,32768,0,0,0,8192,0,0,0,0,49152,6,62976,20479,3,26697,0,0,65532,1286,0,0,0,16,0,0,0,16,62976,20479,3,26697,62976,20479,3,26697,62976,20479,3,26697,0,0,65532,1286,0,0,65532,1062,0,0,65532,1062,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,128,2048,0,0,0,0,0,0,16,62976,20479,3,26697,0,0,65532,1062,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseTL","Expr","TLType","Bool","Int","String","String2","LOOP","FOR","DO","CONCAT","COPY","ENLARGE","ROTATE_R","STACK","EMPTY","READ","REFLECT_Y","REFLECT_X","NEGATE","CONJUNCT","GET_SUBTILE","LENGTH","SHRINK","COMPARE","IF","THEN","ELSE","LET","IN","true","false","'=='","'/='","'+'","'-'","'/'","'*'","'^'","'%'","'<='","'>='","'<'","'>'","'&&'","'||'","'!'","AND","OR","NOT","'{'","'}'","'('","')'","','","':'","';'","var","'='","str","int","%eof"]
        bit_start = st Prelude.* 64
        bit_end = (st Prelude.+ 1) Prelude.* 64
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..63]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (10) = happyShift action_3
action_0 (11) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (17) = happyShift action_9
action_0 (18) = happyShift action_10
action_0 (19) = happyShift action_11
action_0 (20) = happyShift action_12
action_0 (21) = happyShift action_13
action_0 (22) = happyShift action_14
action_0 (23) = happyShift action_15
action_0 (24) = happyShift action_16
action_0 (25) = happyShift action_17
action_0 (26) = happyShift action_18
action_0 (27) = happyShift action_19
action_0 (28) = happyShift action_20
action_0 (31) = happyShift action_21
action_0 (33) = happyShift action_22
action_0 (34) = happyShift action_23
action_0 (49) = happyShift action_24
action_0 (52) = happyShift action_25
action_0 (55) = happyShift action_26
action_0 (60) = happyShift action_27
action_0 (62) = happyShift action_28
action_0 (63) = happyShift action_29
action_0 (4) = happyGoto action_30
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (10) = happyShift action_3
action_1 (11) = happyShift action_4
action_1 (13) = happyShift action_5
action_1 (14) = happyShift action_6
action_1 (15) = happyShift action_7
action_1 (16) = happyShift action_8
action_1 (17) = happyShift action_9
action_1 (18) = happyShift action_10
action_1 (19) = happyShift action_11
action_1 (20) = happyShift action_12
action_1 (21) = happyShift action_13
action_1 (22) = happyShift action_14
action_1 (23) = happyShift action_15
action_1 (24) = happyShift action_16
action_1 (25) = happyShift action_17
action_1 (26) = happyShift action_18
action_1 (27) = happyShift action_19
action_1 (28) = happyShift action_20
action_1 (31) = happyShift action_21
action_1 (33) = happyShift action_22
action_1 (34) = happyShift action_23
action_1 (49) = happyShift action_24
action_1 (52) = happyShift action_25
action_1 (55) = happyShift action_26
action_1 (60) = happyShift action_27
action_1 (62) = happyShift action_28
action_1 (63) = happyShift action_29
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (35) = happyShift action_31
action_2 (36) = happyShift action_32
action_2 (37) = happyShift action_33
action_2 (38) = happyShift action_34
action_2 (39) = happyShift action_35
action_2 (40) = happyShift action_36
action_2 (41) = happyShift action_37
action_2 (42) = happyShift action_38
action_2 (43) = happyShift action_39
action_2 (44) = happyShift action_40
action_2 (45) = happyShift action_41
action_2 (46) = happyShift action_42
action_2 (47) = happyShift action_43
action_2 (48) = happyShift action_44
action_2 (50) = happyShift action_45
action_2 (51) = happyShift action_46
action_2 (59) = happyShift action_47
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (10) = happyShift action_3
action_3 (11) = happyShift action_4
action_3 (13) = happyShift action_5
action_3 (14) = happyShift action_6
action_3 (15) = happyShift action_7
action_3 (16) = happyShift action_8
action_3 (17) = happyShift action_9
action_3 (18) = happyShift action_10
action_3 (19) = happyShift action_11
action_3 (20) = happyShift action_12
action_3 (21) = happyShift action_13
action_3 (22) = happyShift action_14
action_3 (23) = happyShift action_15
action_3 (24) = happyShift action_16
action_3 (25) = happyShift action_17
action_3 (26) = happyShift action_18
action_3 (27) = happyShift action_19
action_3 (28) = happyShift action_20
action_3 (31) = happyShift action_21
action_3 (33) = happyShift action_22
action_3 (34) = happyShift action_23
action_3 (49) = happyShift action_24
action_3 (52) = happyShift action_25
action_3 (55) = happyShift action_26
action_3 (60) = happyShift action_27
action_3 (62) = happyShift action_28
action_3 (63) = happyShift action_29
action_3 (4) = happyGoto action_69
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (55) = happyShift action_68
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_3
action_5 (11) = happyShift action_4
action_5 (13) = happyShift action_5
action_5 (14) = happyShift action_6
action_5 (15) = happyShift action_7
action_5 (16) = happyShift action_8
action_5 (17) = happyShift action_9
action_5 (18) = happyShift action_10
action_5 (19) = happyShift action_11
action_5 (20) = happyShift action_12
action_5 (21) = happyShift action_13
action_5 (22) = happyShift action_14
action_5 (23) = happyShift action_15
action_5 (24) = happyShift action_16
action_5 (25) = happyShift action_17
action_5 (26) = happyShift action_18
action_5 (27) = happyShift action_19
action_5 (28) = happyShift action_20
action_5 (31) = happyShift action_21
action_5 (33) = happyShift action_22
action_5 (34) = happyShift action_23
action_5 (49) = happyShift action_24
action_5 (52) = happyShift action_25
action_5 (55) = happyShift action_26
action_5 (60) = happyShift action_27
action_5 (62) = happyShift action_28
action_5 (63) = happyShift action_29
action_5 (4) = happyGoto action_67
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (10) = happyShift action_3
action_6 (11) = happyShift action_4
action_6 (13) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (15) = happyShift action_7
action_6 (16) = happyShift action_8
action_6 (17) = happyShift action_9
action_6 (18) = happyShift action_10
action_6 (19) = happyShift action_11
action_6 (20) = happyShift action_12
action_6 (21) = happyShift action_13
action_6 (22) = happyShift action_14
action_6 (23) = happyShift action_15
action_6 (24) = happyShift action_16
action_6 (25) = happyShift action_17
action_6 (26) = happyShift action_18
action_6 (27) = happyShift action_19
action_6 (28) = happyShift action_20
action_6 (31) = happyShift action_21
action_6 (33) = happyShift action_22
action_6 (34) = happyShift action_23
action_6 (49) = happyShift action_24
action_6 (52) = happyShift action_25
action_6 (55) = happyShift action_26
action_6 (60) = happyShift action_27
action_6 (62) = happyShift action_28
action_6 (63) = happyShift action_29
action_6 (4) = happyGoto action_66
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (10) = happyShift action_3
action_7 (11) = happyShift action_4
action_7 (13) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (15) = happyShift action_7
action_7 (16) = happyShift action_8
action_7 (17) = happyShift action_9
action_7 (18) = happyShift action_10
action_7 (19) = happyShift action_11
action_7 (20) = happyShift action_12
action_7 (21) = happyShift action_13
action_7 (22) = happyShift action_14
action_7 (23) = happyShift action_15
action_7 (24) = happyShift action_16
action_7 (25) = happyShift action_17
action_7 (26) = happyShift action_18
action_7 (27) = happyShift action_19
action_7 (28) = happyShift action_20
action_7 (31) = happyShift action_21
action_7 (33) = happyShift action_22
action_7 (34) = happyShift action_23
action_7 (49) = happyShift action_24
action_7 (52) = happyShift action_25
action_7 (55) = happyShift action_26
action_7 (60) = happyShift action_27
action_7 (62) = happyShift action_28
action_7 (63) = happyShift action_29
action_7 (4) = happyGoto action_65
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (10) = happyShift action_3
action_8 (11) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (15) = happyShift action_7
action_8 (16) = happyShift action_8
action_8 (17) = happyShift action_9
action_8 (18) = happyShift action_10
action_8 (19) = happyShift action_11
action_8 (20) = happyShift action_12
action_8 (21) = happyShift action_13
action_8 (22) = happyShift action_14
action_8 (23) = happyShift action_15
action_8 (24) = happyShift action_16
action_8 (25) = happyShift action_17
action_8 (26) = happyShift action_18
action_8 (27) = happyShift action_19
action_8 (28) = happyShift action_20
action_8 (31) = happyShift action_21
action_8 (33) = happyShift action_22
action_8 (34) = happyShift action_23
action_8 (49) = happyShift action_24
action_8 (52) = happyShift action_25
action_8 (55) = happyShift action_26
action_8 (60) = happyShift action_27
action_8 (62) = happyShift action_28
action_8 (63) = happyShift action_29
action_8 (4) = happyGoto action_64
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (10) = happyShift action_3
action_9 (11) = happyShift action_4
action_9 (13) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (15) = happyShift action_7
action_9 (16) = happyShift action_8
action_9 (17) = happyShift action_9
action_9 (18) = happyShift action_10
action_9 (19) = happyShift action_11
action_9 (20) = happyShift action_12
action_9 (21) = happyShift action_13
action_9 (22) = happyShift action_14
action_9 (23) = happyShift action_15
action_9 (24) = happyShift action_16
action_9 (25) = happyShift action_17
action_9 (26) = happyShift action_18
action_9 (27) = happyShift action_19
action_9 (28) = happyShift action_20
action_9 (31) = happyShift action_21
action_9 (33) = happyShift action_22
action_9 (34) = happyShift action_23
action_9 (49) = happyShift action_24
action_9 (52) = happyShift action_25
action_9 (55) = happyShift action_26
action_9 (60) = happyShift action_27
action_9 (62) = happyShift action_28
action_9 (63) = happyShift action_29
action_9 (4) = happyGoto action_63
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (10) = happyShift action_3
action_10 (11) = happyShift action_4
action_10 (13) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (15) = happyShift action_7
action_10 (16) = happyShift action_8
action_10 (17) = happyShift action_9
action_10 (18) = happyShift action_10
action_10 (19) = happyShift action_11
action_10 (20) = happyShift action_12
action_10 (21) = happyShift action_13
action_10 (22) = happyShift action_14
action_10 (23) = happyShift action_15
action_10 (24) = happyShift action_16
action_10 (25) = happyShift action_17
action_10 (26) = happyShift action_18
action_10 (27) = happyShift action_19
action_10 (28) = happyShift action_20
action_10 (31) = happyShift action_21
action_10 (33) = happyShift action_22
action_10 (34) = happyShift action_23
action_10 (49) = happyShift action_24
action_10 (52) = happyShift action_25
action_10 (55) = happyShift action_26
action_10 (60) = happyShift action_27
action_10 (62) = happyShift action_28
action_10 (63) = happyShift action_29
action_10 (4) = happyGoto action_62
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (60) = happyShift action_61
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (10) = happyShift action_3
action_12 (11) = happyShift action_4
action_12 (13) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (15) = happyShift action_7
action_12 (16) = happyShift action_8
action_12 (17) = happyShift action_9
action_12 (18) = happyShift action_10
action_12 (19) = happyShift action_11
action_12 (20) = happyShift action_12
action_12 (21) = happyShift action_13
action_12 (22) = happyShift action_14
action_12 (23) = happyShift action_15
action_12 (24) = happyShift action_16
action_12 (25) = happyShift action_17
action_12 (26) = happyShift action_18
action_12 (27) = happyShift action_19
action_12 (28) = happyShift action_20
action_12 (31) = happyShift action_21
action_12 (33) = happyShift action_22
action_12 (34) = happyShift action_23
action_12 (49) = happyShift action_24
action_12 (52) = happyShift action_25
action_12 (55) = happyShift action_26
action_12 (60) = happyShift action_27
action_12 (62) = happyShift action_28
action_12 (63) = happyShift action_29
action_12 (4) = happyGoto action_60
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (10) = happyShift action_3
action_13 (11) = happyShift action_4
action_13 (13) = happyShift action_5
action_13 (14) = happyShift action_6
action_13 (15) = happyShift action_7
action_13 (16) = happyShift action_8
action_13 (17) = happyShift action_9
action_13 (18) = happyShift action_10
action_13 (19) = happyShift action_11
action_13 (20) = happyShift action_12
action_13 (21) = happyShift action_13
action_13 (22) = happyShift action_14
action_13 (23) = happyShift action_15
action_13 (24) = happyShift action_16
action_13 (25) = happyShift action_17
action_13 (26) = happyShift action_18
action_13 (27) = happyShift action_19
action_13 (28) = happyShift action_20
action_13 (31) = happyShift action_21
action_13 (33) = happyShift action_22
action_13 (34) = happyShift action_23
action_13 (49) = happyShift action_24
action_13 (52) = happyShift action_25
action_13 (55) = happyShift action_26
action_13 (60) = happyShift action_27
action_13 (62) = happyShift action_28
action_13 (63) = happyShift action_29
action_13 (4) = happyGoto action_59
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (10) = happyShift action_3
action_14 (11) = happyShift action_4
action_14 (13) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (15) = happyShift action_7
action_14 (16) = happyShift action_8
action_14 (17) = happyShift action_9
action_14 (18) = happyShift action_10
action_14 (19) = happyShift action_11
action_14 (20) = happyShift action_12
action_14 (21) = happyShift action_13
action_14 (22) = happyShift action_14
action_14 (23) = happyShift action_15
action_14 (24) = happyShift action_16
action_14 (25) = happyShift action_17
action_14 (26) = happyShift action_18
action_14 (27) = happyShift action_19
action_14 (28) = happyShift action_20
action_14 (31) = happyShift action_21
action_14 (33) = happyShift action_22
action_14 (34) = happyShift action_23
action_14 (49) = happyShift action_24
action_14 (52) = happyShift action_25
action_14 (55) = happyShift action_26
action_14 (60) = happyShift action_27
action_14 (62) = happyShift action_28
action_14 (63) = happyShift action_29
action_14 (4) = happyGoto action_58
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (10) = happyShift action_3
action_15 (11) = happyShift action_4
action_15 (13) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (15) = happyShift action_7
action_15 (16) = happyShift action_8
action_15 (17) = happyShift action_9
action_15 (18) = happyShift action_10
action_15 (19) = happyShift action_11
action_15 (20) = happyShift action_12
action_15 (21) = happyShift action_13
action_15 (22) = happyShift action_14
action_15 (23) = happyShift action_15
action_15 (24) = happyShift action_16
action_15 (25) = happyShift action_17
action_15 (26) = happyShift action_18
action_15 (27) = happyShift action_19
action_15 (28) = happyShift action_20
action_15 (31) = happyShift action_21
action_15 (33) = happyShift action_22
action_15 (34) = happyShift action_23
action_15 (49) = happyShift action_24
action_15 (52) = happyShift action_25
action_15 (55) = happyShift action_26
action_15 (60) = happyShift action_27
action_15 (62) = happyShift action_28
action_15 (63) = happyShift action_29
action_15 (4) = happyGoto action_57
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (55) = happyShift action_56
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (60) = happyShift action_55
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (10) = happyShift action_3
action_18 (11) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (15) = happyShift action_7
action_18 (16) = happyShift action_8
action_18 (17) = happyShift action_9
action_18 (18) = happyShift action_10
action_18 (19) = happyShift action_11
action_18 (20) = happyShift action_12
action_18 (21) = happyShift action_13
action_18 (22) = happyShift action_14
action_18 (23) = happyShift action_15
action_18 (24) = happyShift action_16
action_18 (25) = happyShift action_17
action_18 (26) = happyShift action_18
action_18 (27) = happyShift action_19
action_18 (28) = happyShift action_20
action_18 (31) = happyShift action_21
action_18 (33) = happyShift action_22
action_18 (34) = happyShift action_23
action_18 (49) = happyShift action_24
action_18 (52) = happyShift action_25
action_18 (55) = happyShift action_26
action_18 (60) = happyShift action_27
action_18 (62) = happyShift action_28
action_18 (63) = happyShift action_29
action_18 (4) = happyGoto action_54
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (10) = happyShift action_3
action_19 (11) = happyShift action_4
action_19 (13) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (15) = happyShift action_7
action_19 (16) = happyShift action_8
action_19 (17) = happyShift action_9
action_19 (18) = happyShift action_10
action_19 (19) = happyShift action_11
action_19 (20) = happyShift action_12
action_19 (21) = happyShift action_13
action_19 (22) = happyShift action_14
action_19 (23) = happyShift action_15
action_19 (24) = happyShift action_16
action_19 (25) = happyShift action_17
action_19 (26) = happyShift action_18
action_19 (27) = happyShift action_19
action_19 (28) = happyShift action_20
action_19 (31) = happyShift action_21
action_19 (33) = happyShift action_22
action_19 (34) = happyShift action_23
action_19 (49) = happyShift action_24
action_19 (52) = happyShift action_25
action_19 (55) = happyShift action_26
action_19 (60) = happyShift action_27
action_19 (62) = happyShift action_28
action_19 (63) = happyShift action_29
action_19 (4) = happyGoto action_53
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (55) = happyShift action_52
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (55) = happyShift action_51
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_40

action_23 _ = happyReduce_41

action_24 (10) = happyShift action_3
action_24 (11) = happyShift action_4
action_24 (13) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (15) = happyShift action_7
action_24 (16) = happyShift action_8
action_24 (17) = happyShift action_9
action_24 (18) = happyShift action_10
action_24 (19) = happyShift action_11
action_24 (20) = happyShift action_12
action_24 (21) = happyShift action_13
action_24 (22) = happyShift action_14
action_24 (23) = happyShift action_15
action_24 (24) = happyShift action_16
action_24 (25) = happyShift action_17
action_24 (26) = happyShift action_18
action_24 (27) = happyShift action_19
action_24 (28) = happyShift action_20
action_24 (31) = happyShift action_21
action_24 (33) = happyShift action_22
action_24 (34) = happyShift action_23
action_24 (49) = happyShift action_24
action_24 (52) = happyShift action_25
action_24 (55) = happyShift action_26
action_24 (60) = happyShift action_27
action_24 (62) = happyShift action_28
action_24 (63) = happyShift action_29
action_24 (4) = happyGoto action_50
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (10) = happyShift action_3
action_25 (11) = happyShift action_4
action_25 (13) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (15) = happyShift action_7
action_25 (16) = happyShift action_8
action_25 (17) = happyShift action_9
action_25 (18) = happyShift action_10
action_25 (19) = happyShift action_11
action_25 (20) = happyShift action_12
action_25 (21) = happyShift action_13
action_25 (22) = happyShift action_14
action_25 (23) = happyShift action_15
action_25 (24) = happyShift action_16
action_25 (25) = happyShift action_17
action_25 (26) = happyShift action_18
action_25 (27) = happyShift action_19
action_25 (28) = happyShift action_20
action_25 (31) = happyShift action_21
action_25 (33) = happyShift action_22
action_25 (34) = happyShift action_23
action_25 (49) = happyShift action_24
action_25 (52) = happyShift action_25
action_25 (55) = happyShift action_26
action_25 (60) = happyShift action_27
action_25 (62) = happyShift action_28
action_25 (63) = happyShift action_29
action_25 (4) = happyGoto action_49
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (10) = happyShift action_3
action_26 (11) = happyShift action_4
action_26 (13) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (15) = happyShift action_7
action_26 (16) = happyShift action_8
action_26 (17) = happyShift action_9
action_26 (18) = happyShift action_10
action_26 (19) = happyShift action_11
action_26 (20) = happyShift action_12
action_26 (21) = happyShift action_13
action_26 (22) = happyShift action_14
action_26 (23) = happyShift action_15
action_26 (24) = happyShift action_16
action_26 (25) = happyShift action_17
action_26 (26) = happyShift action_18
action_26 (27) = happyShift action_19
action_26 (28) = happyShift action_20
action_26 (31) = happyShift action_21
action_26 (33) = happyShift action_22
action_26 (34) = happyShift action_23
action_26 (49) = happyShift action_24
action_26 (52) = happyShift action_25
action_26 (55) = happyShift action_26
action_26 (60) = happyShift action_27
action_26 (62) = happyShift action_28
action_26 (63) = happyShift action_29
action_26 (4) = happyGoto action_48
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_43

action_28 _ = happyReduce_42

action_29 _ = happyReduce_44

action_30 (35) = happyShift action_31
action_30 (36) = happyShift action_32
action_30 (37) = happyShift action_33
action_30 (38) = happyShift action_34
action_30 (39) = happyShift action_35
action_30 (40) = happyShift action_36
action_30 (41) = happyShift action_37
action_30 (42) = happyShift action_38
action_30 (43) = happyShift action_39
action_30 (44) = happyShift action_40
action_30 (45) = happyShift action_41
action_30 (46) = happyShift action_42
action_30 (47) = happyShift action_43
action_30 (48) = happyShift action_44
action_30 (50) = happyShift action_45
action_30 (51) = happyShift action_46
action_30 (59) = happyShift action_47
action_30 (64) = happyAccept
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (10) = happyShift action_3
action_31 (11) = happyShift action_4
action_31 (13) = happyShift action_5
action_31 (14) = happyShift action_6
action_31 (15) = happyShift action_7
action_31 (16) = happyShift action_8
action_31 (17) = happyShift action_9
action_31 (18) = happyShift action_10
action_31 (19) = happyShift action_11
action_31 (20) = happyShift action_12
action_31 (21) = happyShift action_13
action_31 (22) = happyShift action_14
action_31 (23) = happyShift action_15
action_31 (24) = happyShift action_16
action_31 (25) = happyShift action_17
action_31 (26) = happyShift action_18
action_31 (27) = happyShift action_19
action_31 (28) = happyShift action_20
action_31 (31) = happyShift action_21
action_31 (33) = happyShift action_22
action_31 (34) = happyShift action_23
action_31 (49) = happyShift action_24
action_31 (52) = happyShift action_25
action_31 (55) = happyShift action_26
action_31 (60) = happyShift action_27
action_31 (62) = happyShift action_28
action_31 (63) = happyShift action_29
action_31 (4) = happyGoto action_101
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (10) = happyShift action_3
action_32 (11) = happyShift action_4
action_32 (13) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (15) = happyShift action_7
action_32 (16) = happyShift action_8
action_32 (17) = happyShift action_9
action_32 (18) = happyShift action_10
action_32 (19) = happyShift action_11
action_32 (20) = happyShift action_12
action_32 (21) = happyShift action_13
action_32 (22) = happyShift action_14
action_32 (23) = happyShift action_15
action_32 (24) = happyShift action_16
action_32 (25) = happyShift action_17
action_32 (26) = happyShift action_18
action_32 (27) = happyShift action_19
action_32 (28) = happyShift action_20
action_32 (31) = happyShift action_21
action_32 (33) = happyShift action_22
action_32 (34) = happyShift action_23
action_32 (49) = happyShift action_24
action_32 (52) = happyShift action_25
action_32 (55) = happyShift action_26
action_32 (60) = happyShift action_27
action_32 (62) = happyShift action_28
action_32 (63) = happyShift action_29
action_32 (4) = happyGoto action_100
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (10) = happyShift action_3
action_33 (11) = happyShift action_4
action_33 (13) = happyShift action_5
action_33 (14) = happyShift action_6
action_33 (15) = happyShift action_7
action_33 (16) = happyShift action_8
action_33 (17) = happyShift action_9
action_33 (18) = happyShift action_10
action_33 (19) = happyShift action_11
action_33 (20) = happyShift action_12
action_33 (21) = happyShift action_13
action_33 (22) = happyShift action_14
action_33 (23) = happyShift action_15
action_33 (24) = happyShift action_16
action_33 (25) = happyShift action_17
action_33 (26) = happyShift action_18
action_33 (27) = happyShift action_19
action_33 (28) = happyShift action_20
action_33 (31) = happyShift action_21
action_33 (33) = happyShift action_22
action_33 (34) = happyShift action_23
action_33 (49) = happyShift action_24
action_33 (52) = happyShift action_25
action_33 (55) = happyShift action_26
action_33 (60) = happyShift action_27
action_33 (62) = happyShift action_28
action_33 (63) = happyShift action_29
action_33 (4) = happyGoto action_99
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (10) = happyShift action_3
action_34 (11) = happyShift action_4
action_34 (13) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (15) = happyShift action_7
action_34 (16) = happyShift action_8
action_34 (17) = happyShift action_9
action_34 (18) = happyShift action_10
action_34 (19) = happyShift action_11
action_34 (20) = happyShift action_12
action_34 (21) = happyShift action_13
action_34 (22) = happyShift action_14
action_34 (23) = happyShift action_15
action_34 (24) = happyShift action_16
action_34 (25) = happyShift action_17
action_34 (26) = happyShift action_18
action_34 (27) = happyShift action_19
action_34 (28) = happyShift action_20
action_34 (31) = happyShift action_21
action_34 (33) = happyShift action_22
action_34 (34) = happyShift action_23
action_34 (49) = happyShift action_24
action_34 (52) = happyShift action_25
action_34 (55) = happyShift action_26
action_34 (60) = happyShift action_27
action_34 (62) = happyShift action_28
action_34 (63) = happyShift action_29
action_34 (4) = happyGoto action_98
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (10) = happyShift action_3
action_35 (11) = happyShift action_4
action_35 (13) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (15) = happyShift action_7
action_35 (16) = happyShift action_8
action_35 (17) = happyShift action_9
action_35 (18) = happyShift action_10
action_35 (19) = happyShift action_11
action_35 (20) = happyShift action_12
action_35 (21) = happyShift action_13
action_35 (22) = happyShift action_14
action_35 (23) = happyShift action_15
action_35 (24) = happyShift action_16
action_35 (25) = happyShift action_17
action_35 (26) = happyShift action_18
action_35 (27) = happyShift action_19
action_35 (28) = happyShift action_20
action_35 (31) = happyShift action_21
action_35 (33) = happyShift action_22
action_35 (34) = happyShift action_23
action_35 (49) = happyShift action_24
action_35 (52) = happyShift action_25
action_35 (55) = happyShift action_26
action_35 (60) = happyShift action_27
action_35 (62) = happyShift action_28
action_35 (63) = happyShift action_29
action_35 (4) = happyGoto action_97
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (10) = happyShift action_3
action_36 (11) = happyShift action_4
action_36 (13) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (15) = happyShift action_7
action_36 (16) = happyShift action_8
action_36 (17) = happyShift action_9
action_36 (18) = happyShift action_10
action_36 (19) = happyShift action_11
action_36 (20) = happyShift action_12
action_36 (21) = happyShift action_13
action_36 (22) = happyShift action_14
action_36 (23) = happyShift action_15
action_36 (24) = happyShift action_16
action_36 (25) = happyShift action_17
action_36 (26) = happyShift action_18
action_36 (27) = happyShift action_19
action_36 (28) = happyShift action_20
action_36 (31) = happyShift action_21
action_36 (33) = happyShift action_22
action_36 (34) = happyShift action_23
action_36 (49) = happyShift action_24
action_36 (52) = happyShift action_25
action_36 (55) = happyShift action_26
action_36 (60) = happyShift action_27
action_36 (62) = happyShift action_28
action_36 (63) = happyShift action_29
action_36 (4) = happyGoto action_96
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (10) = happyShift action_3
action_37 (11) = happyShift action_4
action_37 (13) = happyShift action_5
action_37 (14) = happyShift action_6
action_37 (15) = happyShift action_7
action_37 (16) = happyShift action_8
action_37 (17) = happyShift action_9
action_37 (18) = happyShift action_10
action_37 (19) = happyShift action_11
action_37 (20) = happyShift action_12
action_37 (21) = happyShift action_13
action_37 (22) = happyShift action_14
action_37 (23) = happyShift action_15
action_37 (24) = happyShift action_16
action_37 (25) = happyShift action_17
action_37 (26) = happyShift action_18
action_37 (27) = happyShift action_19
action_37 (28) = happyShift action_20
action_37 (31) = happyShift action_21
action_37 (33) = happyShift action_22
action_37 (34) = happyShift action_23
action_37 (49) = happyShift action_24
action_37 (52) = happyShift action_25
action_37 (55) = happyShift action_26
action_37 (60) = happyShift action_27
action_37 (62) = happyShift action_28
action_37 (63) = happyShift action_29
action_37 (4) = happyGoto action_95
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (10) = happyShift action_3
action_38 (11) = happyShift action_4
action_38 (13) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (15) = happyShift action_7
action_38 (16) = happyShift action_8
action_38 (17) = happyShift action_9
action_38 (18) = happyShift action_10
action_38 (19) = happyShift action_11
action_38 (20) = happyShift action_12
action_38 (21) = happyShift action_13
action_38 (22) = happyShift action_14
action_38 (23) = happyShift action_15
action_38 (24) = happyShift action_16
action_38 (25) = happyShift action_17
action_38 (26) = happyShift action_18
action_38 (27) = happyShift action_19
action_38 (28) = happyShift action_20
action_38 (31) = happyShift action_21
action_38 (33) = happyShift action_22
action_38 (34) = happyShift action_23
action_38 (49) = happyShift action_24
action_38 (52) = happyShift action_25
action_38 (55) = happyShift action_26
action_38 (60) = happyShift action_27
action_38 (62) = happyShift action_28
action_38 (63) = happyShift action_29
action_38 (4) = happyGoto action_94
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (10) = happyShift action_3
action_39 (11) = happyShift action_4
action_39 (13) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (15) = happyShift action_7
action_39 (16) = happyShift action_8
action_39 (17) = happyShift action_9
action_39 (18) = happyShift action_10
action_39 (19) = happyShift action_11
action_39 (20) = happyShift action_12
action_39 (21) = happyShift action_13
action_39 (22) = happyShift action_14
action_39 (23) = happyShift action_15
action_39 (24) = happyShift action_16
action_39 (25) = happyShift action_17
action_39 (26) = happyShift action_18
action_39 (27) = happyShift action_19
action_39 (28) = happyShift action_20
action_39 (31) = happyShift action_21
action_39 (33) = happyShift action_22
action_39 (34) = happyShift action_23
action_39 (49) = happyShift action_24
action_39 (52) = happyShift action_25
action_39 (55) = happyShift action_26
action_39 (60) = happyShift action_27
action_39 (62) = happyShift action_28
action_39 (63) = happyShift action_29
action_39 (4) = happyGoto action_93
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (10) = happyShift action_3
action_40 (11) = happyShift action_4
action_40 (13) = happyShift action_5
action_40 (14) = happyShift action_6
action_40 (15) = happyShift action_7
action_40 (16) = happyShift action_8
action_40 (17) = happyShift action_9
action_40 (18) = happyShift action_10
action_40 (19) = happyShift action_11
action_40 (20) = happyShift action_12
action_40 (21) = happyShift action_13
action_40 (22) = happyShift action_14
action_40 (23) = happyShift action_15
action_40 (24) = happyShift action_16
action_40 (25) = happyShift action_17
action_40 (26) = happyShift action_18
action_40 (27) = happyShift action_19
action_40 (28) = happyShift action_20
action_40 (31) = happyShift action_21
action_40 (33) = happyShift action_22
action_40 (34) = happyShift action_23
action_40 (49) = happyShift action_24
action_40 (52) = happyShift action_25
action_40 (55) = happyShift action_26
action_40 (60) = happyShift action_27
action_40 (62) = happyShift action_28
action_40 (63) = happyShift action_29
action_40 (4) = happyGoto action_92
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_3
action_41 (11) = happyShift action_4
action_41 (13) = happyShift action_5
action_41 (14) = happyShift action_6
action_41 (15) = happyShift action_7
action_41 (16) = happyShift action_8
action_41 (17) = happyShift action_9
action_41 (18) = happyShift action_10
action_41 (19) = happyShift action_11
action_41 (20) = happyShift action_12
action_41 (21) = happyShift action_13
action_41 (22) = happyShift action_14
action_41 (23) = happyShift action_15
action_41 (24) = happyShift action_16
action_41 (25) = happyShift action_17
action_41 (26) = happyShift action_18
action_41 (27) = happyShift action_19
action_41 (28) = happyShift action_20
action_41 (31) = happyShift action_21
action_41 (33) = happyShift action_22
action_41 (34) = happyShift action_23
action_41 (49) = happyShift action_24
action_41 (52) = happyShift action_25
action_41 (55) = happyShift action_26
action_41 (60) = happyShift action_27
action_41 (62) = happyShift action_28
action_41 (63) = happyShift action_29
action_41 (4) = happyGoto action_91
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (10) = happyShift action_3
action_42 (11) = happyShift action_4
action_42 (13) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (15) = happyShift action_7
action_42 (16) = happyShift action_8
action_42 (17) = happyShift action_9
action_42 (18) = happyShift action_10
action_42 (19) = happyShift action_11
action_42 (20) = happyShift action_12
action_42 (21) = happyShift action_13
action_42 (22) = happyShift action_14
action_42 (23) = happyShift action_15
action_42 (24) = happyShift action_16
action_42 (25) = happyShift action_17
action_42 (26) = happyShift action_18
action_42 (27) = happyShift action_19
action_42 (28) = happyShift action_20
action_42 (31) = happyShift action_21
action_42 (33) = happyShift action_22
action_42 (34) = happyShift action_23
action_42 (49) = happyShift action_24
action_42 (52) = happyShift action_25
action_42 (55) = happyShift action_26
action_42 (60) = happyShift action_27
action_42 (62) = happyShift action_28
action_42 (63) = happyShift action_29
action_42 (4) = happyGoto action_90
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (10) = happyShift action_3
action_43 (11) = happyShift action_4
action_43 (13) = happyShift action_5
action_43 (14) = happyShift action_6
action_43 (15) = happyShift action_7
action_43 (16) = happyShift action_8
action_43 (17) = happyShift action_9
action_43 (18) = happyShift action_10
action_43 (19) = happyShift action_11
action_43 (20) = happyShift action_12
action_43 (21) = happyShift action_13
action_43 (22) = happyShift action_14
action_43 (23) = happyShift action_15
action_43 (24) = happyShift action_16
action_43 (25) = happyShift action_17
action_43 (26) = happyShift action_18
action_43 (27) = happyShift action_19
action_43 (28) = happyShift action_20
action_43 (31) = happyShift action_21
action_43 (33) = happyShift action_22
action_43 (34) = happyShift action_23
action_43 (49) = happyShift action_24
action_43 (52) = happyShift action_25
action_43 (55) = happyShift action_26
action_43 (60) = happyShift action_27
action_43 (62) = happyShift action_28
action_43 (63) = happyShift action_29
action_43 (4) = happyGoto action_89
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (10) = happyShift action_3
action_44 (11) = happyShift action_4
action_44 (13) = happyShift action_5
action_44 (14) = happyShift action_6
action_44 (15) = happyShift action_7
action_44 (16) = happyShift action_8
action_44 (17) = happyShift action_9
action_44 (18) = happyShift action_10
action_44 (19) = happyShift action_11
action_44 (20) = happyShift action_12
action_44 (21) = happyShift action_13
action_44 (22) = happyShift action_14
action_44 (23) = happyShift action_15
action_44 (24) = happyShift action_16
action_44 (25) = happyShift action_17
action_44 (26) = happyShift action_18
action_44 (27) = happyShift action_19
action_44 (28) = happyShift action_20
action_44 (31) = happyShift action_21
action_44 (33) = happyShift action_22
action_44 (34) = happyShift action_23
action_44 (49) = happyShift action_24
action_44 (52) = happyShift action_25
action_44 (55) = happyShift action_26
action_44 (60) = happyShift action_27
action_44 (62) = happyShift action_28
action_44 (63) = happyShift action_29
action_44 (4) = happyGoto action_88
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (10) = happyShift action_3
action_45 (11) = happyShift action_4
action_45 (13) = happyShift action_5
action_45 (14) = happyShift action_6
action_45 (15) = happyShift action_7
action_45 (16) = happyShift action_8
action_45 (17) = happyShift action_9
action_45 (18) = happyShift action_10
action_45 (19) = happyShift action_11
action_45 (20) = happyShift action_12
action_45 (21) = happyShift action_13
action_45 (22) = happyShift action_14
action_45 (23) = happyShift action_15
action_45 (24) = happyShift action_16
action_45 (25) = happyShift action_17
action_45 (26) = happyShift action_18
action_45 (27) = happyShift action_19
action_45 (28) = happyShift action_20
action_45 (31) = happyShift action_21
action_45 (33) = happyShift action_22
action_45 (34) = happyShift action_23
action_45 (49) = happyShift action_24
action_45 (52) = happyShift action_25
action_45 (55) = happyShift action_26
action_45 (60) = happyShift action_27
action_45 (62) = happyShift action_28
action_45 (63) = happyShift action_29
action_45 (4) = happyGoto action_87
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (10) = happyShift action_3
action_46 (11) = happyShift action_4
action_46 (13) = happyShift action_5
action_46 (14) = happyShift action_6
action_46 (15) = happyShift action_7
action_46 (16) = happyShift action_8
action_46 (17) = happyShift action_9
action_46 (18) = happyShift action_10
action_46 (19) = happyShift action_11
action_46 (20) = happyShift action_12
action_46 (21) = happyShift action_13
action_46 (22) = happyShift action_14
action_46 (23) = happyShift action_15
action_46 (24) = happyShift action_16
action_46 (25) = happyShift action_17
action_46 (26) = happyShift action_18
action_46 (27) = happyShift action_19
action_46 (28) = happyShift action_20
action_46 (31) = happyShift action_21
action_46 (33) = happyShift action_22
action_46 (34) = happyShift action_23
action_46 (49) = happyShift action_24
action_46 (52) = happyShift action_25
action_46 (55) = happyShift action_26
action_46 (60) = happyShift action_27
action_46 (62) = happyShift action_28
action_46 (63) = happyShift action_29
action_46 (4) = happyGoto action_86
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (10) = happyShift action_3
action_47 (11) = happyShift action_4
action_47 (13) = happyShift action_5
action_47 (14) = happyShift action_6
action_47 (15) = happyShift action_7
action_47 (16) = happyShift action_8
action_47 (17) = happyShift action_9
action_47 (18) = happyShift action_10
action_47 (19) = happyShift action_11
action_47 (20) = happyShift action_12
action_47 (21) = happyShift action_13
action_47 (22) = happyShift action_14
action_47 (23) = happyShift action_15
action_47 (24) = happyShift action_16
action_47 (25) = happyShift action_17
action_47 (26) = happyShift action_18
action_47 (27) = happyShift action_19
action_47 (28) = happyShift action_20
action_47 (31) = happyShift action_21
action_47 (33) = happyShift action_22
action_47 (34) = happyShift action_23
action_47 (49) = happyShift action_24
action_47 (52) = happyShift action_25
action_47 (55) = happyShift action_26
action_47 (60) = happyShift action_27
action_47 (62) = happyShift action_28
action_47 (63) = happyShift action_29
action_47 (4) = happyGoto action_85
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (35) = happyShift action_31
action_48 (36) = happyShift action_32
action_48 (37) = happyShift action_33
action_48 (38) = happyShift action_34
action_48 (39) = happyShift action_35
action_48 (40) = happyShift action_36
action_48 (41) = happyShift action_37
action_48 (42) = happyShift action_38
action_48 (43) = happyShift action_39
action_48 (44) = happyShift action_40
action_48 (45) = happyShift action_41
action_48 (46) = happyShift action_42
action_48 (47) = happyShift action_43
action_48 (48) = happyShift action_44
action_48 (50) = happyShift action_45
action_48 (51) = happyShift action_46
action_48 (56) = happyShift action_84
action_48 (59) = happyShift action_47
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_30

action_50 _ = happyReduce_29

action_51 (60) = happyShift action_83
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (10) = happyShift action_3
action_52 (11) = happyShift action_4
action_52 (13) = happyShift action_5
action_52 (14) = happyShift action_6
action_52 (15) = happyShift action_7
action_52 (16) = happyShift action_8
action_52 (17) = happyShift action_9
action_52 (18) = happyShift action_10
action_52 (19) = happyShift action_11
action_52 (20) = happyShift action_12
action_52 (21) = happyShift action_13
action_52 (22) = happyShift action_14
action_52 (23) = happyShift action_15
action_52 (24) = happyShift action_16
action_52 (25) = happyShift action_17
action_52 (26) = happyShift action_18
action_52 (27) = happyShift action_19
action_52 (28) = happyShift action_20
action_52 (31) = happyShift action_21
action_52 (33) = happyShift action_22
action_52 (34) = happyShift action_23
action_52 (49) = happyShift action_24
action_52 (52) = happyShift action_25
action_52 (55) = happyShift action_26
action_52 (60) = happyShift action_27
action_52 (62) = happyShift action_28
action_52 (63) = happyShift action_29
action_52 (4) = happyGoto action_82
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (10) = happyShift action_3
action_53 (11) = happyShift action_4
action_53 (13) = happyShift action_5
action_53 (14) = happyShift action_6
action_53 (15) = happyShift action_7
action_53 (16) = happyShift action_8
action_53 (17) = happyShift action_9
action_53 (18) = happyShift action_10
action_53 (19) = happyShift action_11
action_53 (20) = happyShift action_12
action_53 (21) = happyShift action_13
action_53 (22) = happyShift action_14
action_53 (23) = happyShift action_15
action_53 (24) = happyShift action_16
action_53 (25) = happyShift action_17
action_53 (26) = happyShift action_18
action_53 (27) = happyShift action_19
action_53 (28) = happyShift action_20
action_53 (31) = happyShift action_21
action_53 (33) = happyShift action_22
action_53 (34) = happyShift action_23
action_53 (35) = happyShift action_31
action_53 (36) = happyShift action_32
action_53 (37) = happyShift action_33
action_53 (38) = happyShift action_34
action_53 (39) = happyShift action_35
action_53 (40) = happyShift action_36
action_53 (41) = happyShift action_37
action_53 (42) = happyShift action_38
action_53 (43) = happyShift action_39
action_53 (44) = happyShift action_40
action_53 (45) = happyShift action_41
action_53 (46) = happyShift action_42
action_53 (47) = happyShift action_43
action_53 (48) = happyShift action_44
action_53 (49) = happyShift action_24
action_53 (50) = happyShift action_45
action_53 (51) = happyShift action_46
action_53 (52) = happyShift action_25
action_53 (55) = happyShift action_26
action_53 (59) = happyShift action_47
action_53 (60) = happyShift action_27
action_53 (62) = happyShift action_28
action_53 (63) = happyShift action_29
action_53 (4) = happyGoto action_81
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (10) = happyShift action_3
action_54 (11) = happyShift action_4
action_54 (13) = happyShift action_5
action_54 (14) = happyShift action_6
action_54 (15) = happyShift action_7
action_54 (16) = happyShift action_8
action_54 (17) = happyShift action_9
action_54 (18) = happyShift action_10
action_54 (19) = happyShift action_11
action_54 (20) = happyShift action_12
action_54 (21) = happyShift action_13
action_54 (22) = happyShift action_14
action_54 (23) = happyShift action_15
action_54 (24) = happyShift action_16
action_54 (25) = happyShift action_17
action_54 (26) = happyShift action_18
action_54 (27) = happyShift action_19
action_54 (28) = happyShift action_20
action_54 (31) = happyShift action_21
action_54 (33) = happyShift action_22
action_54 (34) = happyShift action_23
action_54 (35) = happyShift action_31
action_54 (36) = happyShift action_32
action_54 (37) = happyShift action_33
action_54 (38) = happyShift action_34
action_54 (39) = happyShift action_35
action_54 (40) = happyShift action_36
action_54 (41) = happyShift action_37
action_54 (42) = happyShift action_38
action_54 (43) = happyShift action_39
action_54 (44) = happyShift action_40
action_54 (45) = happyShift action_41
action_54 (46) = happyShift action_42
action_54 (47) = happyShift action_43
action_54 (48) = happyShift action_44
action_54 (49) = happyShift action_24
action_54 (50) = happyShift action_45
action_54 (51) = happyShift action_46
action_54 (52) = happyShift action_25
action_54 (55) = happyShift action_26
action_54 (59) = happyShift action_47
action_54 (60) = happyShift action_27
action_54 (62) = happyShift action_28
action_54 (63) = happyShift action_29
action_54 (4) = happyGoto action_80
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (10) = happyShift action_3
action_55 (11) = happyShift action_4
action_55 (13) = happyShift action_5
action_55 (14) = happyShift action_6
action_55 (15) = happyShift action_7
action_55 (16) = happyShift action_8
action_55 (17) = happyShift action_9
action_55 (18) = happyShift action_10
action_55 (19) = happyShift action_11
action_55 (20) = happyShift action_12
action_55 (21) = happyShift action_13
action_55 (22) = happyShift action_14
action_55 (23) = happyShift action_15
action_55 (24) = happyShift action_16
action_55 (25) = happyShift action_17
action_55 (26) = happyShift action_18
action_55 (27) = happyShift action_19
action_55 (28) = happyShift action_20
action_55 (31) = happyShift action_21
action_55 (33) = happyShift action_22
action_55 (34) = happyShift action_23
action_55 (49) = happyShift action_24
action_55 (52) = happyShift action_25
action_55 (55) = happyShift action_26
action_55 (60) = happyShift action_27
action_55 (62) = happyShift action_28
action_55 (63) = happyShift action_29
action_55 (4) = happyGoto action_79
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (10) = happyShift action_3
action_56 (11) = happyShift action_4
action_56 (13) = happyShift action_5
action_56 (14) = happyShift action_6
action_56 (15) = happyShift action_7
action_56 (16) = happyShift action_8
action_56 (17) = happyShift action_9
action_56 (18) = happyShift action_10
action_56 (19) = happyShift action_11
action_56 (20) = happyShift action_12
action_56 (21) = happyShift action_13
action_56 (22) = happyShift action_14
action_56 (23) = happyShift action_15
action_56 (24) = happyShift action_16
action_56 (25) = happyShift action_17
action_56 (26) = happyShift action_18
action_56 (27) = happyShift action_19
action_56 (28) = happyShift action_20
action_56 (31) = happyShift action_21
action_56 (33) = happyShift action_22
action_56 (34) = happyShift action_23
action_56 (49) = happyShift action_24
action_56 (52) = happyShift action_25
action_56 (55) = happyShift action_26
action_56 (60) = happyShift action_27
action_56 (62) = happyShift action_28
action_56 (63) = happyShift action_29
action_56 (4) = happyGoto action_78
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (10) = happyShift action_3
action_57 (11) = happyShift action_4
action_57 (13) = happyShift action_5
action_57 (14) = happyShift action_6
action_57 (15) = happyShift action_7
action_57 (16) = happyShift action_8
action_57 (17) = happyShift action_9
action_57 (18) = happyShift action_10
action_57 (19) = happyShift action_11
action_57 (20) = happyShift action_12
action_57 (21) = happyShift action_13
action_57 (22) = happyShift action_14
action_57 (23) = happyShift action_15
action_57 (24) = happyShift action_16
action_57 (25) = happyShift action_17
action_57 (26) = happyShift action_18
action_57 (27) = happyShift action_19
action_57 (28) = happyShift action_20
action_57 (31) = happyShift action_21
action_57 (33) = happyShift action_22
action_57 (34) = happyShift action_23
action_57 (35) = happyShift action_31
action_57 (36) = happyShift action_32
action_57 (37) = happyShift action_33
action_57 (38) = happyShift action_34
action_57 (39) = happyShift action_35
action_57 (40) = happyShift action_36
action_57 (41) = happyShift action_37
action_57 (42) = happyShift action_38
action_57 (43) = happyShift action_39
action_57 (44) = happyShift action_40
action_57 (45) = happyShift action_41
action_57 (46) = happyShift action_42
action_57 (47) = happyShift action_43
action_57 (48) = happyShift action_44
action_57 (49) = happyShift action_24
action_57 (50) = happyShift action_45
action_57 (51) = happyShift action_46
action_57 (52) = happyShift action_25
action_57 (55) = happyShift action_26
action_57 (59) = happyShift action_47
action_57 (60) = happyShift action_27
action_57 (62) = happyShift action_28
action_57 (63) = happyShift action_29
action_57 (4) = happyGoto action_77
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (47) = happyShift action_43
action_58 (48) = happyShift action_44
action_58 (50) = happyShift action_45
action_58 (51) = happyShift action_46
action_58 _ = happyReduce_10

action_59 (47) = happyShift action_43
action_59 (48) = happyShift action_44
action_59 (50) = happyShift action_45
action_59 (51) = happyShift action_46
action_59 _ = happyReduce_9

action_60 (47) = happyShift action_43
action_60 (48) = happyShift action_44
action_60 (50) = happyShift action_45
action_60 (51) = happyShift action_46
action_60 _ = happyReduce_8

action_61 _ = happyReduce_26

action_62 (47) = happyShift action_43
action_62 (48) = happyShift action_44
action_62 (50) = happyShift action_45
action_62 (51) = happyShift action_46
action_62 _ = happyReduce_7

action_63 (10) = happyShift action_3
action_63 (11) = happyShift action_4
action_63 (13) = happyShift action_5
action_63 (14) = happyShift action_6
action_63 (15) = happyShift action_7
action_63 (16) = happyShift action_8
action_63 (17) = happyShift action_9
action_63 (18) = happyShift action_10
action_63 (19) = happyShift action_11
action_63 (20) = happyShift action_12
action_63 (21) = happyShift action_13
action_63 (22) = happyShift action_14
action_63 (23) = happyShift action_15
action_63 (24) = happyShift action_16
action_63 (25) = happyShift action_17
action_63 (26) = happyShift action_18
action_63 (27) = happyShift action_19
action_63 (28) = happyShift action_20
action_63 (31) = happyShift action_21
action_63 (33) = happyShift action_22
action_63 (34) = happyShift action_23
action_63 (35) = happyShift action_31
action_63 (36) = happyShift action_32
action_63 (37) = happyShift action_33
action_63 (38) = happyShift action_34
action_63 (39) = happyShift action_35
action_63 (40) = happyShift action_36
action_63 (41) = happyShift action_37
action_63 (42) = happyShift action_38
action_63 (43) = happyShift action_39
action_63 (44) = happyShift action_40
action_63 (45) = happyShift action_41
action_63 (46) = happyShift action_42
action_63 (47) = happyShift action_43
action_63 (48) = happyShift action_44
action_63 (49) = happyShift action_24
action_63 (50) = happyShift action_45
action_63 (51) = happyShift action_46
action_63 (52) = happyShift action_25
action_63 (55) = happyShift action_26
action_63 (59) = happyShift action_47
action_63 (60) = happyShift action_27
action_63 (62) = happyShift action_28
action_63 (63) = happyShift action_29
action_63 (4) = happyGoto action_76
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (10) = happyShift action_3
action_64 (11) = happyShift action_4
action_64 (13) = happyShift action_5
action_64 (14) = happyShift action_6
action_64 (15) = happyShift action_7
action_64 (16) = happyShift action_8
action_64 (17) = happyShift action_9
action_64 (18) = happyShift action_10
action_64 (19) = happyShift action_11
action_64 (20) = happyShift action_12
action_64 (21) = happyShift action_13
action_64 (22) = happyShift action_14
action_64 (23) = happyShift action_15
action_64 (24) = happyShift action_16
action_64 (25) = happyShift action_17
action_64 (26) = happyShift action_18
action_64 (27) = happyShift action_19
action_64 (28) = happyShift action_20
action_64 (31) = happyShift action_21
action_64 (33) = happyShift action_22
action_64 (34) = happyShift action_23
action_64 (35) = happyShift action_31
action_64 (36) = happyShift action_32
action_64 (37) = happyShift action_33
action_64 (38) = happyShift action_34
action_64 (39) = happyShift action_35
action_64 (40) = happyShift action_36
action_64 (41) = happyShift action_37
action_64 (42) = happyShift action_38
action_64 (43) = happyShift action_39
action_64 (44) = happyShift action_40
action_64 (45) = happyShift action_41
action_64 (46) = happyShift action_42
action_64 (47) = happyShift action_43
action_64 (48) = happyShift action_44
action_64 (49) = happyShift action_24
action_64 (50) = happyShift action_45
action_64 (51) = happyShift action_46
action_64 (52) = happyShift action_25
action_64 (55) = happyShift action_26
action_64 (59) = happyShift action_47
action_64 (60) = happyShift action_27
action_64 (62) = happyShift action_28
action_64 (63) = happyShift action_29
action_64 (4) = happyGoto action_75
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (10) = happyShift action_3
action_65 (11) = happyShift action_4
action_65 (13) = happyShift action_5
action_65 (14) = happyShift action_6
action_65 (15) = happyShift action_7
action_65 (16) = happyShift action_8
action_65 (17) = happyShift action_9
action_65 (18) = happyShift action_10
action_65 (19) = happyShift action_11
action_65 (20) = happyShift action_12
action_65 (21) = happyShift action_13
action_65 (22) = happyShift action_14
action_65 (23) = happyShift action_15
action_65 (24) = happyShift action_16
action_65 (25) = happyShift action_17
action_65 (26) = happyShift action_18
action_65 (27) = happyShift action_19
action_65 (28) = happyShift action_20
action_65 (31) = happyShift action_21
action_65 (33) = happyShift action_22
action_65 (34) = happyShift action_23
action_65 (35) = happyShift action_31
action_65 (36) = happyShift action_32
action_65 (37) = happyShift action_33
action_65 (38) = happyShift action_34
action_65 (39) = happyShift action_35
action_65 (40) = happyShift action_36
action_65 (41) = happyShift action_37
action_65 (42) = happyShift action_38
action_65 (43) = happyShift action_39
action_65 (44) = happyShift action_40
action_65 (45) = happyShift action_41
action_65 (46) = happyShift action_42
action_65 (47) = happyShift action_43
action_65 (48) = happyShift action_44
action_65 (49) = happyShift action_24
action_65 (50) = happyShift action_45
action_65 (51) = happyShift action_46
action_65 (52) = happyShift action_25
action_65 (55) = happyShift action_26
action_65 (59) = happyShift action_47
action_65 (60) = happyShift action_27
action_65 (62) = happyShift action_28
action_65 (63) = happyShift action_29
action_65 (4) = happyGoto action_74
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (10) = happyShift action_3
action_66 (11) = happyShift action_4
action_66 (13) = happyShift action_5
action_66 (14) = happyShift action_6
action_66 (15) = happyShift action_7
action_66 (16) = happyShift action_8
action_66 (17) = happyShift action_9
action_66 (18) = happyShift action_10
action_66 (19) = happyShift action_11
action_66 (20) = happyShift action_12
action_66 (21) = happyShift action_13
action_66 (22) = happyShift action_14
action_66 (23) = happyShift action_15
action_66 (24) = happyShift action_16
action_66 (25) = happyShift action_17
action_66 (26) = happyShift action_18
action_66 (27) = happyShift action_19
action_66 (28) = happyShift action_20
action_66 (31) = happyShift action_21
action_66 (33) = happyShift action_22
action_66 (34) = happyShift action_23
action_66 (35) = happyShift action_31
action_66 (36) = happyShift action_32
action_66 (37) = happyShift action_33
action_66 (38) = happyShift action_34
action_66 (39) = happyShift action_35
action_66 (40) = happyShift action_36
action_66 (41) = happyShift action_37
action_66 (42) = happyShift action_38
action_66 (43) = happyShift action_39
action_66 (44) = happyShift action_40
action_66 (45) = happyShift action_41
action_66 (46) = happyShift action_42
action_66 (47) = happyShift action_43
action_66 (48) = happyShift action_44
action_66 (49) = happyShift action_24
action_66 (50) = happyShift action_45
action_66 (51) = happyShift action_46
action_66 (52) = happyShift action_25
action_66 (55) = happyShift action_26
action_66 (59) = happyShift action_47
action_66 (60) = happyShift action_27
action_66 (62) = happyShift action_28
action_66 (63) = happyShift action_29
action_66 (4) = happyGoto action_73
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (10) = happyShift action_3
action_67 (11) = happyShift action_4
action_67 (13) = happyShift action_5
action_67 (14) = happyShift action_6
action_67 (15) = happyShift action_7
action_67 (16) = happyShift action_8
action_67 (17) = happyShift action_9
action_67 (18) = happyShift action_10
action_67 (19) = happyShift action_11
action_67 (20) = happyShift action_12
action_67 (21) = happyShift action_13
action_67 (22) = happyShift action_14
action_67 (23) = happyShift action_15
action_67 (24) = happyShift action_16
action_67 (25) = happyShift action_17
action_67 (26) = happyShift action_18
action_67 (27) = happyShift action_19
action_67 (28) = happyShift action_20
action_67 (31) = happyShift action_21
action_67 (33) = happyShift action_22
action_67 (34) = happyShift action_23
action_67 (35) = happyShift action_31
action_67 (36) = happyShift action_32
action_67 (37) = happyShift action_33
action_67 (38) = happyShift action_34
action_67 (39) = happyShift action_35
action_67 (40) = happyShift action_36
action_67 (41) = happyShift action_37
action_67 (42) = happyShift action_38
action_67 (43) = happyShift action_39
action_67 (44) = happyShift action_40
action_67 (45) = happyShift action_41
action_67 (46) = happyShift action_42
action_67 (47) = happyShift action_43
action_67 (48) = happyShift action_44
action_67 (49) = happyShift action_24
action_67 (50) = happyShift action_45
action_67 (51) = happyShift action_46
action_67 (52) = happyShift action_25
action_67 (55) = happyShift action_26
action_67 (59) = happyShift action_47
action_67 (60) = happyShift action_27
action_67 (62) = happyShift action_28
action_67 (63) = happyShift action_29
action_67 (4) = happyGoto action_72
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (60) = happyShift action_71
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (35) = happyShift action_31
action_69 (36) = happyShift action_32
action_69 (37) = happyShift action_33
action_69 (38) = happyShift action_34
action_69 (39) = happyShift action_35
action_69 (40) = happyShift action_36
action_69 (41) = happyShift action_37
action_69 (42) = happyShift action_38
action_69 (43) = happyShift action_39
action_69 (44) = happyShift action_40
action_69 (45) = happyShift action_41
action_69 (46) = happyShift action_42
action_69 (47) = happyShift action_43
action_69 (48) = happyShift action_44
action_69 (50) = happyShift action_45
action_69 (51) = happyShift action_46
action_69 (53) = happyShift action_70
action_69 (59) = happyShift action_47
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (10) = happyShift action_3
action_70 (11) = happyShift action_4
action_70 (13) = happyShift action_5
action_70 (14) = happyShift action_6
action_70 (15) = happyShift action_7
action_70 (16) = happyShift action_8
action_70 (17) = happyShift action_9
action_70 (18) = happyShift action_10
action_70 (19) = happyShift action_11
action_70 (20) = happyShift action_12
action_70 (21) = happyShift action_13
action_70 (22) = happyShift action_14
action_70 (23) = happyShift action_15
action_70 (24) = happyShift action_16
action_70 (25) = happyShift action_17
action_70 (26) = happyShift action_18
action_70 (27) = happyShift action_19
action_70 (28) = happyShift action_20
action_70 (31) = happyShift action_21
action_70 (33) = happyShift action_22
action_70 (34) = happyShift action_23
action_70 (49) = happyShift action_24
action_70 (52) = happyShift action_25
action_70 (55) = happyShift action_26
action_70 (60) = happyShift action_27
action_70 (62) = happyShift action_28
action_70 (63) = happyShift action_29
action_70 (4) = happyGoto action_106
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (57) = happyShift action_105
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (35) = happyShift action_31
action_72 (36) = happyShift action_32
action_72 (41) = happyShift action_37
action_72 (42) = happyShift action_38
action_72 (43) = happyShift action_39
action_72 (44) = happyShift action_40
action_72 (45) = happyShift action_41
action_72 (46) = happyShift action_42
action_72 (47) = happyShift action_43
action_72 (48) = happyShift action_44
action_72 (50) = happyShift action_45
action_72 (51) = happyShift action_46
action_72 _ = happyReduce_3

action_73 (35) = happyShift action_31
action_73 (36) = happyShift action_32
action_73 (41) = happyShift action_37
action_73 (42) = happyShift action_38
action_73 (43) = happyShift action_39
action_73 (44) = happyShift action_40
action_73 (45) = happyShift action_41
action_73 (46) = happyShift action_42
action_73 (47) = happyShift action_43
action_73 (48) = happyShift action_44
action_73 (50) = happyShift action_45
action_73 (51) = happyShift action_46
action_73 _ = happyReduce_2

action_74 (47) = happyShift action_43
action_74 (48) = happyShift action_44
action_74 (50) = happyShift action_45
action_74 (51) = happyShift action_46
action_74 _ = happyReduce_4

action_75 (47) = happyShift action_43
action_75 (48) = happyShift action_44
action_75 (50) = happyShift action_45
action_75 (51) = happyShift action_46
action_75 _ = happyReduce_5

action_76 (35) = happyShift action_31
action_76 (36) = happyShift action_32
action_76 (41) = happyShift action_37
action_76 (42) = happyShift action_38
action_76 (43) = happyShift action_39
action_76 (44) = happyShift action_40
action_76 (45) = happyShift action_41
action_76 (46) = happyShift action_42
action_76 (47) = happyShift action_43
action_76 (48) = happyShift action_44
action_76 (50) = happyShift action_45
action_76 (51) = happyShift action_46
action_76 _ = happyReduce_6

action_77 (35) = happyShift action_31
action_77 (36) = happyShift action_32
action_77 (41) = happyShift action_37
action_77 (42) = happyShift action_38
action_77 (43) = happyShift action_39
action_77 (44) = happyShift action_40
action_77 (45) = happyShift action_41
action_77 (46) = happyShift action_42
action_77 (47) = happyShift action_43
action_77 (48) = happyShift action_44
action_77 (50) = happyShift action_45
action_77 (51) = happyShift action_46
action_77 _ = happyReduce_12

action_78 (35) = happyShift action_31
action_78 (36) = happyShift action_32
action_78 (37) = happyShift action_33
action_78 (38) = happyShift action_34
action_78 (39) = happyShift action_35
action_78 (40) = happyShift action_36
action_78 (41) = happyShift action_37
action_78 (42) = happyShift action_38
action_78 (43) = happyShift action_39
action_78 (44) = happyShift action_40
action_78 (45) = happyShift action_41
action_78 (46) = happyShift action_42
action_78 (47) = happyShift action_43
action_78 (48) = happyShift action_44
action_78 (50) = happyShift action_45
action_78 (51) = happyShift action_46
action_78 (57) = happyShift action_104
action_78 (59) = happyShift action_47
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (35) = happyShift action_31
action_79 (36) = happyShift action_32
action_79 (41) = happyShift action_37
action_79 (42) = happyShift action_38
action_79 (43) = happyShift action_39
action_79 (44) = happyShift action_40
action_79 (45) = happyShift action_41
action_79 (46) = happyShift action_42
action_79 (47) = happyShift action_43
action_79 (48) = happyShift action_44
action_79 (50) = happyShift action_45
action_79 (51) = happyShift action_46
action_79 _ = happyReduce_18

action_80 (47) = happyShift action_43
action_80 (48) = happyShift action_44
action_80 (50) = happyShift action_45
action_80 (51) = happyShift action_46
action_80 _ = happyReduce_11

action_81 (47) = happyShift action_43
action_81 (48) = happyShift action_44
action_81 (50) = happyShift action_45
action_81 (51) = happyShift action_46
action_81 _ = happyReduce_19

action_82 (35) = happyShift action_31
action_82 (36) = happyShift action_32
action_82 (37) = happyShift action_33
action_82 (38) = happyShift action_34
action_82 (39) = happyShift action_35
action_82 (40) = happyShift action_36
action_82 (41) = happyShift action_37
action_82 (42) = happyShift action_38
action_82 (43) = happyShift action_39
action_82 (44) = happyShift action_40
action_82 (45) = happyShift action_41
action_82 (46) = happyShift action_42
action_82 (47) = happyShift action_43
action_82 (48) = happyShift action_44
action_82 (50) = happyShift action_45
action_82 (51) = happyShift action_46
action_82 (56) = happyShift action_103
action_82 (59) = happyShift action_47
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (58) = happyShift action_102
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_39

action_85 (35) = happyShift action_31
action_85 (36) = happyShift action_32
action_85 (37) = happyShift action_33
action_85 (38) = happyShift action_34
action_85 (39) = happyShift action_35
action_85 (40) = happyShift action_36
action_85 (41) = happyShift action_37
action_85 (42) = happyShift action_38
action_85 (43) = happyShift action_39
action_85 (44) = happyShift action_40
action_85 (45) = happyShift action_41
action_85 (46) = happyShift action_42
action_85 (47) = happyShift action_43
action_85 (48) = happyShift action_44
action_85 (50) = happyShift action_45
action_85 (51) = happyShift action_46
action_85 _ = happyReduce_1

action_86 (51) = happyFail []
action_86 _ = happyReduce_28

action_87 (48) = happyShift action_44
action_87 (50) = happyFail []
action_87 (51) = happyShift action_46
action_87 _ = happyReduce_25

action_88 (48) = happyFail []
action_88 (51) = happyShift action_46
action_88 _ = happyReduce_27

action_89 (47) = happyFail []
action_89 (48) = happyShift action_44
action_89 (50) = happyShift action_45
action_89 (51) = happyShift action_46
action_89 _ = happyReduce_24

action_90 (35) = happyShift action_31
action_90 (36) = happyShift action_32
action_90 (41) = happyShift action_37
action_90 (42) = happyShift action_38
action_90 (43) = happyShift action_39
action_90 (44) = happyShift action_40
action_90 (45) = happyShift action_41
action_90 (46) = happyFail []
action_90 (47) = happyShift action_43
action_90 (48) = happyShift action_44
action_90 (50) = happyShift action_45
action_90 (51) = happyShift action_46
action_90 _ = happyReduce_32

action_91 (35) = happyShift action_31
action_91 (36) = happyShift action_32
action_91 (41) = happyShift action_37
action_91 (42) = happyShift action_38
action_91 (43) = happyShift action_39
action_91 (44) = happyShift action_40
action_91 (45) = happyFail []
action_91 (47) = happyShift action_43
action_91 (48) = happyShift action_44
action_91 (50) = happyShift action_45
action_91 (51) = happyShift action_46
action_91 _ = happyReduce_31

action_92 (35) = happyShift action_31
action_92 (36) = happyShift action_32
action_92 (41) = happyShift action_37
action_92 (42) = happyShift action_38
action_92 (44) = happyFail []
action_92 (47) = happyShift action_43
action_92 (48) = happyShift action_44
action_92 (50) = happyShift action_45
action_92 (51) = happyShift action_46
action_92 _ = happyReduce_23

action_93 (35) = happyShift action_31
action_93 (36) = happyShift action_32
action_93 (41) = happyShift action_37
action_93 (42) = happyShift action_38
action_93 (43) = happyFail []
action_93 (44) = happyShift action_40
action_93 (47) = happyShift action_43
action_93 (48) = happyShift action_44
action_93 (50) = happyShift action_45
action_93 (51) = happyShift action_46
action_93 _ = happyReduce_22

action_94 (42) = happyFail []
action_94 (47) = happyShift action_43
action_94 (48) = happyShift action_44
action_94 (50) = happyShift action_45
action_94 (51) = happyShift action_46
action_94 _ = happyReduce_38

action_95 (41) = happyFail []
action_95 (42) = happyShift action_38
action_95 (47) = happyShift action_43
action_95 (48) = happyShift action_44
action_95 (50) = happyShift action_45
action_95 (51) = happyShift action_46
action_95 _ = happyReduce_37

action_96 (35) = happyShift action_31
action_96 (36) = happyShift action_32
action_96 (39) = happyShift action_35
action_96 (40) = happyShift action_36
action_96 (41) = happyShift action_37
action_96 (42) = happyShift action_38
action_96 (43) = happyShift action_39
action_96 (44) = happyShift action_40
action_96 (45) = happyShift action_41
action_96 (46) = happyShift action_42
action_96 (47) = happyShift action_43
action_96 (48) = happyShift action_44
action_96 (50) = happyShift action_45
action_96 (51) = happyShift action_46
action_96 _ = happyReduce_36

action_97 (35) = happyShift action_31
action_97 (36) = happyShift action_32
action_97 (39) = happyShift action_35
action_97 (40) = happyShift action_36
action_97 (41) = happyShift action_37
action_97 (42) = happyShift action_38
action_97 (43) = happyShift action_39
action_97 (44) = happyShift action_40
action_97 (45) = happyShift action_41
action_97 (46) = happyShift action_42
action_97 (47) = happyShift action_43
action_97 (48) = happyShift action_44
action_97 (50) = happyShift action_45
action_97 (51) = happyShift action_46
action_97 _ = happyReduce_35

action_98 (35) = happyShift action_31
action_98 (36) = happyShift action_32
action_98 (39) = happyShift action_35
action_98 (40) = happyShift action_36
action_98 (41) = happyShift action_37
action_98 (42) = happyShift action_38
action_98 (43) = happyShift action_39
action_98 (44) = happyShift action_40
action_98 (45) = happyShift action_41
action_98 (46) = happyShift action_42
action_98 (47) = happyShift action_43
action_98 (48) = happyShift action_44
action_98 (50) = happyShift action_45
action_98 (51) = happyShift action_46
action_98 _ = happyReduce_34

action_99 (35) = happyShift action_31
action_99 (36) = happyShift action_32
action_99 (39) = happyShift action_35
action_99 (40) = happyShift action_36
action_99 (41) = happyShift action_37
action_99 (42) = happyShift action_38
action_99 (43) = happyShift action_39
action_99 (44) = happyShift action_40
action_99 (45) = happyShift action_41
action_99 (46) = happyShift action_42
action_99 (47) = happyShift action_43
action_99 (48) = happyShift action_44
action_99 (50) = happyShift action_45
action_99 (51) = happyShift action_46
action_99 _ = happyReduce_33

action_100 (36) = happyFail []
action_100 (41) = happyShift action_37
action_100 (42) = happyShift action_38
action_100 (47) = happyShift action_43
action_100 (48) = happyShift action_44
action_100 (50) = happyShift action_45
action_100 (51) = happyShift action_46
action_100 _ = happyReduce_21

action_101 (35) = happyFail []
action_101 (36) = happyShift action_32
action_101 (41) = happyShift action_37
action_101 (42) = happyShift action_38
action_101 (47) = happyShift action_43
action_101 (48) = happyShift action_44
action_101 (50) = happyShift action_45
action_101 (51) = happyShift action_46
action_101 _ = happyReduce_20

action_102 (6) = happyShift action_112
action_102 (7) = happyShift action_113
action_102 (8) = happyShift action_114
action_102 (9) = happyShift action_115
action_102 (5) = happyGoto action_111
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (29) = happyShift action_110
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (10) = happyShift action_3
action_104 (11) = happyShift action_4
action_104 (13) = happyShift action_5
action_104 (14) = happyShift action_6
action_104 (15) = happyShift action_7
action_104 (16) = happyShift action_8
action_104 (17) = happyShift action_9
action_104 (18) = happyShift action_10
action_104 (19) = happyShift action_11
action_104 (20) = happyShift action_12
action_104 (21) = happyShift action_13
action_104 (22) = happyShift action_14
action_104 (23) = happyShift action_15
action_104 (24) = happyShift action_16
action_104 (25) = happyShift action_17
action_104 (26) = happyShift action_18
action_104 (27) = happyShift action_19
action_104 (28) = happyShift action_20
action_104 (31) = happyShift action_21
action_104 (33) = happyShift action_22
action_104 (34) = happyShift action_23
action_104 (49) = happyShift action_24
action_104 (52) = happyShift action_25
action_104 (55) = happyShift action_26
action_104 (60) = happyShift action_27
action_104 (62) = happyShift action_28
action_104 (63) = happyShift action_29
action_104 (4) = happyGoto action_109
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (60) = happyShift action_108
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (35) = happyShift action_31
action_106 (36) = happyShift action_32
action_106 (37) = happyShift action_33
action_106 (38) = happyShift action_34
action_106 (39) = happyShift action_35
action_106 (40) = happyShift action_36
action_106 (41) = happyShift action_37
action_106 (42) = happyShift action_38
action_106 (43) = happyShift action_39
action_106 (44) = happyShift action_40
action_106 (45) = happyShift action_41
action_106 (46) = happyShift action_42
action_106 (47) = happyShift action_43
action_106 (48) = happyShift action_44
action_106 (50) = happyShift action_45
action_106 (51) = happyShift action_46
action_106 (54) = happyShift action_107
action_106 (59) = happyShift action_47
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_13

action_108 (58) = happyShift action_119
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (35) = happyShift action_31
action_109 (36) = happyShift action_32
action_109 (37) = happyShift action_33
action_109 (38) = happyShift action_34
action_109 (39) = happyShift action_35
action_109 (40) = happyShift action_36
action_109 (41) = happyShift action_37
action_109 (42) = happyShift action_38
action_109 (43) = happyShift action_39
action_109 (44) = happyShift action_40
action_109 (45) = happyShift action_41
action_109 (46) = happyShift action_42
action_109 (47) = happyShift action_43
action_109 (48) = happyShift action_44
action_109 (50) = happyShift action_45
action_109 (51) = happyShift action_46
action_109 (56) = happyShift action_118
action_109 (59) = happyShift action_47
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (53) = happyShift action_117
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (61) = happyShift action_116
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_45

action_113 _ = happyReduce_47

action_114 _ = happyReduce_46

action_115 _ = happyReduce_48

action_116 (10) = happyShift action_3
action_116 (11) = happyShift action_4
action_116 (13) = happyShift action_5
action_116 (14) = happyShift action_6
action_116 (15) = happyShift action_7
action_116 (16) = happyShift action_8
action_116 (17) = happyShift action_9
action_116 (18) = happyShift action_10
action_116 (19) = happyShift action_11
action_116 (20) = happyShift action_12
action_116 (21) = happyShift action_13
action_116 (22) = happyShift action_14
action_116 (23) = happyShift action_15
action_116 (24) = happyShift action_16
action_116 (25) = happyShift action_17
action_116 (26) = happyShift action_18
action_116 (27) = happyShift action_19
action_116 (28) = happyShift action_20
action_116 (31) = happyShift action_21
action_116 (33) = happyShift action_22
action_116 (34) = happyShift action_23
action_116 (49) = happyShift action_24
action_116 (52) = happyShift action_25
action_116 (55) = happyShift action_26
action_116 (60) = happyShift action_27
action_116 (62) = happyShift action_28
action_116 (63) = happyShift action_29
action_116 (4) = happyGoto action_123
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (10) = happyShift action_3
action_117 (11) = happyShift action_4
action_117 (13) = happyShift action_5
action_117 (14) = happyShift action_6
action_117 (15) = happyShift action_7
action_117 (16) = happyShift action_8
action_117 (17) = happyShift action_9
action_117 (18) = happyShift action_10
action_117 (19) = happyShift action_11
action_117 (20) = happyShift action_12
action_117 (21) = happyShift action_13
action_117 (22) = happyShift action_14
action_117 (23) = happyShift action_15
action_117 (24) = happyShift action_16
action_117 (25) = happyShift action_17
action_117 (26) = happyShift action_18
action_117 (27) = happyShift action_19
action_117 (28) = happyShift action_20
action_117 (31) = happyShift action_21
action_117 (33) = happyShift action_22
action_117 (34) = happyShift action_23
action_117 (49) = happyShift action_24
action_117 (52) = happyShift action_25
action_117 (55) = happyShift action_26
action_117 (60) = happyShift action_27
action_117 (62) = happyShift action_28
action_117 (63) = happyShift action_29
action_117 (4) = happyGoto action_122
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (10) = happyShift action_3
action_118 (11) = happyShift action_4
action_118 (13) = happyShift action_5
action_118 (14) = happyShift action_6
action_118 (15) = happyShift action_7
action_118 (16) = happyShift action_8
action_118 (17) = happyShift action_9
action_118 (18) = happyShift action_10
action_118 (19) = happyShift action_11
action_118 (20) = happyShift action_12
action_118 (21) = happyShift action_13
action_118 (22) = happyShift action_14
action_118 (23) = happyShift action_15
action_118 (24) = happyShift action_16
action_118 (25) = happyShift action_17
action_118 (26) = happyShift action_18
action_118 (27) = happyShift action_19
action_118 (28) = happyShift action_20
action_118 (31) = happyShift action_21
action_118 (33) = happyShift action_22
action_118 (34) = happyShift action_23
action_118 (49) = happyShift action_24
action_118 (52) = happyShift action_25
action_118 (55) = happyShift action_26
action_118 (60) = happyShift action_27
action_118 (62) = happyShift action_28
action_118 (63) = happyShift action_29
action_118 (4) = happyGoto action_121
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (6) = happyShift action_112
action_119 (7) = happyShift action_113
action_119 (8) = happyShift action_114
action_119 (9) = happyShift action_115
action_119 (5) = happyGoto action_120
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (61) = happyShift action_127
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (10) = happyShift action_3
action_121 (11) = happyShift action_4
action_121 (13) = happyShift action_5
action_121 (14) = happyShift action_6
action_121 (15) = happyShift action_7
action_121 (16) = happyShift action_8
action_121 (17) = happyShift action_9
action_121 (18) = happyShift action_10
action_121 (19) = happyShift action_11
action_121 (20) = happyShift action_12
action_121 (21) = happyShift action_13
action_121 (22) = happyShift action_14
action_121 (23) = happyShift action_15
action_121 (24) = happyShift action_16
action_121 (25) = happyShift action_17
action_121 (26) = happyShift action_18
action_121 (27) = happyShift action_19
action_121 (28) = happyShift action_20
action_121 (31) = happyShift action_21
action_121 (33) = happyShift action_22
action_121 (34) = happyShift action_23
action_121 (35) = happyShift action_31
action_121 (36) = happyShift action_32
action_121 (37) = happyShift action_33
action_121 (38) = happyShift action_34
action_121 (39) = happyShift action_35
action_121 (40) = happyShift action_36
action_121 (41) = happyShift action_37
action_121 (42) = happyShift action_38
action_121 (43) = happyShift action_39
action_121 (44) = happyShift action_40
action_121 (45) = happyShift action_41
action_121 (46) = happyShift action_42
action_121 (47) = happyShift action_43
action_121 (48) = happyShift action_44
action_121 (49) = happyShift action_24
action_121 (50) = happyShift action_45
action_121 (51) = happyShift action_46
action_121 (52) = happyShift action_25
action_121 (55) = happyShift action_26
action_121 (59) = happyShift action_47
action_121 (60) = happyShift action_27
action_121 (62) = happyShift action_28
action_121 (63) = happyShift action_29
action_121 (4) = happyGoto action_126
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (35) = happyShift action_31
action_122 (36) = happyShift action_32
action_122 (37) = happyShift action_33
action_122 (38) = happyShift action_34
action_122 (39) = happyShift action_35
action_122 (40) = happyShift action_36
action_122 (41) = happyShift action_37
action_122 (42) = happyShift action_38
action_122 (43) = happyShift action_39
action_122 (44) = happyShift action_40
action_122 (45) = happyShift action_41
action_122 (46) = happyShift action_42
action_122 (47) = happyShift action_43
action_122 (48) = happyShift action_44
action_122 (50) = happyShift action_45
action_122 (51) = happyShift action_46
action_122 (54) = happyShift action_125
action_122 (59) = happyShift action_47
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (35) = happyShift action_31
action_123 (36) = happyShift action_32
action_123 (37) = happyShift action_33
action_123 (38) = happyShift action_34
action_123 (39) = happyShift action_35
action_123 (40) = happyShift action_36
action_123 (41) = happyShift action_37
action_123 (42) = happyShift action_38
action_123 (43) = happyShift action_39
action_123 (44) = happyShift action_40
action_123 (45) = happyShift action_41
action_123 (46) = happyShift action_42
action_123 (47) = happyShift action_43
action_123 (48) = happyShift action_44
action_123 (50) = happyShift action_45
action_123 (51) = happyShift action_46
action_123 (56) = happyShift action_124
action_123 (59) = happyShift action_47
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (32) = happyShift action_130
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (30) = happyShift action_129
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (47) = happyShift action_43
action_126 (48) = happyShift action_44
action_126 (50) = happyShift action_45
action_126 (51) = happyShift action_46
action_126 _ = happyReduce_17

action_127 (10) = happyShift action_3
action_127 (11) = happyShift action_4
action_127 (13) = happyShift action_5
action_127 (14) = happyShift action_6
action_127 (15) = happyShift action_7
action_127 (16) = happyShift action_8
action_127 (17) = happyShift action_9
action_127 (18) = happyShift action_10
action_127 (19) = happyShift action_11
action_127 (20) = happyShift action_12
action_127 (21) = happyShift action_13
action_127 (22) = happyShift action_14
action_127 (23) = happyShift action_15
action_127 (24) = happyShift action_16
action_127 (25) = happyShift action_17
action_127 (26) = happyShift action_18
action_127 (27) = happyShift action_19
action_127 (28) = happyShift action_20
action_127 (31) = happyShift action_21
action_127 (33) = happyShift action_22
action_127 (34) = happyShift action_23
action_127 (49) = happyShift action_24
action_127 (52) = happyShift action_25
action_127 (55) = happyShift action_26
action_127 (60) = happyShift action_27
action_127 (62) = happyShift action_28
action_127 (63) = happyShift action_29
action_127 (4) = happyGoto action_128
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (35) = happyShift action_31
action_128 (36) = happyShift action_32
action_128 (37) = happyShift action_33
action_128 (38) = happyShift action_34
action_128 (39) = happyShift action_35
action_128 (40) = happyShift action_36
action_128 (41) = happyShift action_37
action_128 (42) = happyShift action_38
action_128 (43) = happyShift action_39
action_128 (44) = happyShift action_40
action_128 (45) = happyShift action_41
action_128 (46) = happyShift action_42
action_128 (47) = happyShift action_43
action_128 (48) = happyShift action_44
action_128 (50) = happyShift action_45
action_128 (51) = happyShift action_46
action_128 (57) = happyShift action_133
action_128 (59) = happyShift action_47
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (53) = happyShift action_132
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (53) = happyShift action_131
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (10) = happyShift action_3
action_131 (11) = happyShift action_4
action_131 (13) = happyShift action_5
action_131 (14) = happyShift action_6
action_131 (15) = happyShift action_7
action_131 (16) = happyShift action_8
action_131 (17) = happyShift action_9
action_131 (18) = happyShift action_10
action_131 (19) = happyShift action_11
action_131 (20) = happyShift action_12
action_131 (21) = happyShift action_13
action_131 (22) = happyShift action_14
action_131 (23) = happyShift action_15
action_131 (24) = happyShift action_16
action_131 (25) = happyShift action_17
action_131 (26) = happyShift action_18
action_131 (27) = happyShift action_19
action_131 (28) = happyShift action_20
action_131 (31) = happyShift action_21
action_131 (33) = happyShift action_22
action_131 (34) = happyShift action_23
action_131 (49) = happyShift action_24
action_131 (52) = happyShift action_25
action_131 (55) = happyShift action_26
action_131 (60) = happyShift action_27
action_131 (62) = happyShift action_28
action_131 (63) = happyShift action_29
action_131 (4) = happyGoto action_136
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (10) = happyShift action_3
action_132 (11) = happyShift action_4
action_132 (13) = happyShift action_5
action_132 (14) = happyShift action_6
action_132 (15) = happyShift action_7
action_132 (16) = happyShift action_8
action_132 (17) = happyShift action_9
action_132 (18) = happyShift action_10
action_132 (19) = happyShift action_11
action_132 (20) = happyShift action_12
action_132 (21) = happyShift action_13
action_132 (22) = happyShift action_14
action_132 (23) = happyShift action_15
action_132 (24) = happyShift action_16
action_132 (25) = happyShift action_17
action_132 (26) = happyShift action_18
action_132 (27) = happyShift action_19
action_132 (28) = happyShift action_20
action_132 (31) = happyShift action_21
action_132 (33) = happyShift action_22
action_132 (34) = happyShift action_23
action_132 (49) = happyShift action_24
action_132 (52) = happyShift action_25
action_132 (55) = happyShift action_26
action_132 (60) = happyShift action_27
action_132 (62) = happyShift action_28
action_132 (63) = happyShift action_29
action_132 (4) = happyGoto action_135
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (10) = happyShift action_3
action_133 (11) = happyShift action_4
action_133 (13) = happyShift action_5
action_133 (14) = happyShift action_6
action_133 (15) = happyShift action_7
action_133 (16) = happyShift action_8
action_133 (17) = happyShift action_9
action_133 (18) = happyShift action_10
action_133 (19) = happyShift action_11
action_133 (20) = happyShift action_12
action_133 (21) = happyShift action_13
action_133 (22) = happyShift action_14
action_133 (23) = happyShift action_15
action_133 (24) = happyShift action_16
action_133 (25) = happyShift action_17
action_133 (26) = happyShift action_18
action_133 (27) = happyShift action_19
action_133 (28) = happyShift action_20
action_133 (31) = happyShift action_21
action_133 (33) = happyShift action_22
action_133 (34) = happyShift action_23
action_133 (49) = happyShift action_24
action_133 (52) = happyShift action_25
action_133 (55) = happyShift action_26
action_133 (60) = happyShift action_27
action_133 (62) = happyShift action_28
action_133 (63) = happyShift action_29
action_133 (4) = happyGoto action_134
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (35) = happyShift action_31
action_134 (36) = happyShift action_32
action_134 (37) = happyShift action_33
action_134 (38) = happyShift action_34
action_134 (39) = happyShift action_35
action_134 (40) = happyShift action_36
action_134 (41) = happyShift action_37
action_134 (42) = happyShift action_38
action_134 (43) = happyShift action_39
action_134 (44) = happyShift action_40
action_134 (45) = happyShift action_41
action_134 (46) = happyShift action_42
action_134 (47) = happyShift action_43
action_134 (48) = happyShift action_44
action_134 (50) = happyShift action_45
action_134 (51) = happyShift action_46
action_134 (57) = happyShift action_139
action_134 (59) = happyShift action_47
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (35) = happyShift action_31
action_135 (36) = happyShift action_32
action_135 (37) = happyShift action_33
action_135 (38) = happyShift action_34
action_135 (39) = happyShift action_35
action_135 (40) = happyShift action_36
action_135 (41) = happyShift action_37
action_135 (42) = happyShift action_38
action_135 (43) = happyShift action_39
action_135 (44) = happyShift action_40
action_135 (45) = happyShift action_41
action_135 (46) = happyShift action_42
action_135 (47) = happyShift action_43
action_135 (48) = happyShift action_44
action_135 (50) = happyShift action_45
action_135 (51) = happyShift action_46
action_135 (54) = happyShift action_138
action_135 (59) = happyShift action_47
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (35) = happyShift action_31
action_136 (36) = happyShift action_32
action_136 (37) = happyShift action_33
action_136 (38) = happyShift action_34
action_136 (39) = happyShift action_35
action_136 (40) = happyShift action_36
action_136 (41) = happyShift action_37
action_136 (42) = happyShift action_38
action_136 (43) = happyShift action_39
action_136 (44) = happyShift action_40
action_136 (45) = happyShift action_41
action_136 (46) = happyShift action_42
action_136 (47) = happyShift action_43
action_136 (48) = happyShift action_44
action_136 (50) = happyShift action_45
action_136 (51) = happyShift action_46
action_136 (54) = happyShift action_137
action_136 (59) = happyShift action_47
action_136 _ = happyFail (happyExpListPerState 136)

action_137 _ = happyReduce_16

action_138 _ = happyReduce_15

action_139 (60) = happyShift action_140
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (56) = happyShift action_141
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (12) = happyShift action_142
action_141 _ = happyFail (happyExpListPerState 141)

action_142 (53) = happyShift action_143
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (10) = happyShift action_3
action_143 (11) = happyShift action_4
action_143 (13) = happyShift action_5
action_143 (14) = happyShift action_6
action_143 (15) = happyShift action_7
action_143 (16) = happyShift action_8
action_143 (17) = happyShift action_9
action_143 (18) = happyShift action_10
action_143 (19) = happyShift action_11
action_143 (20) = happyShift action_12
action_143 (21) = happyShift action_13
action_143 (22) = happyShift action_14
action_143 (23) = happyShift action_15
action_143 (24) = happyShift action_16
action_143 (25) = happyShift action_17
action_143 (26) = happyShift action_18
action_143 (27) = happyShift action_19
action_143 (28) = happyShift action_20
action_143 (31) = happyShift action_21
action_143 (33) = happyShift action_22
action_143 (34) = happyShift action_23
action_143 (49) = happyShift action_24
action_143 (52) = happyShift action_25
action_143 (55) = happyShift action_26
action_143 (60) = happyShift action_27
action_143 (62) = happyShift action_28
action_143 (63) = happyShift action_29
action_143 (4) = happyGoto action_144
action_143 _ = happyFail (happyExpListPerState 143)

action_144 (35) = happyShift action_31
action_144 (36) = happyShift action_32
action_144 (37) = happyShift action_33
action_144 (38) = happyShift action_34
action_144 (39) = happyShift action_35
action_144 (40) = happyShift action_36
action_144 (41) = happyShift action_37
action_144 (42) = happyShift action_38
action_144 (43) = happyShift action_39
action_144 (44) = happyShift action_40
action_144 (45) = happyShift action_41
action_144 (46) = happyShift action_42
action_144 (47) = happyShift action_43
action_144 (48) = happyShift action_44
action_144 (50) = happyShift action_45
action_144 (51) = happyShift action_46
action_144 (54) = happyShift action_145
action_144 (59) = happyShift action_47
action_144 _ = happyFail (happyExpListPerState 144)

action_145 _ = happyReduce_14

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sequence happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Copy happy_var_2 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Concat happy_var_2 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Enlarge happy_var_2 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (RotateR happy_var_2 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Stack happy_var_2 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Empty happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ReflectY happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ReflectX happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Negate happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Shrink happy_var_2 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Conjunction happy_var_2 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 5 4 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Loop happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 18 4 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_17) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarToken _ happy_var_13)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_11) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarToken _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarToken _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ForLoop happy_var_3 happy_var_5 happy_var_7 happy_var_9 happy_var_11 happy_var_13 happy_var_17
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 12 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Branch happy_var_3 happy_var_7 happy_var_11
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 12 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VarToken _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_3 happy_var_5 happy_var_7 happy_var_11
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 8 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Subtile happy_var_3 happy_var_5 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	(HappyTerminal (VarToken _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Length happy_var_2 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Compare happy_var_2 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessEqual happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreatEqual happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  4 happyReduction_26
happyReduction_26 (HappyTerminal (VarToken _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Read happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  4 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  4 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  4 happyReduction_30
happyReduction_30 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  4 happyReduction_31
happyReduction_31 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Less happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  4 happyReduction_32
happyReduction_32 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Great happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  4 happyReduction_33
happyReduction_33 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  4 happyReduction_34
happyReduction_34 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  4 happyReduction_35
happyReduction_35 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  4 happyReduction_36
happyReduction_36 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Times happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  4 happyReduction_37
happyReduction_37 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Power happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  4 happyReduction_38
happyReduction_38 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  4 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  4 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn4
		 (TLTrue
	)

happyReduce_41 = happySpecReduce_1  4 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn4
		 (TLFalse
	)

happyReduce_42 = happySpecReduce_1  4 happyReduction_42
happyReduction_42 (HappyTerminal (StringToken _ happy_var_1))
	 =  HappyAbsSyn4
		 (Str happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  4 happyReduction_43
happyReduction_43 (HappyTerminal (VarToken _ happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  4 happyReduction_44
happyReduction_44 (HappyTerminal (IntToken _ happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  5 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn5
		 (TLBool
	)

happyReduce_46 = happySpecReduce_1  5 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn5
		 (TLString
	)

happyReduce_47 = happySpecReduce_1  5 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn5
		 (TLInt
	)

happyReduce_48 = happySpecReduce_1  5 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn5
		 (TLListString
	)

happyNewToken action sts stk [] =
	action 64 64 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	BoolTypeToken _ -> cont 6;
	IntTypeToken _ -> cont 7;
	StringTypeToken _ -> cont 8;
	ListStringTypeToken _ -> cont 9;
	LoopToken _ -> cont 10;
	ForToken _ -> cont 11;
	DoToken _ -> cont 12;
	ConcatToken _ -> cont 13;
	CopyToken _ -> cont 14;
	EnlargeToken _ -> cont 15;
	RightRotateToken _ -> cont 16;
	StackToken _ -> cont 17;
	EmptyToken _ -> cont 18;
	ReadToken _ -> cont 19;
	ReflectYToken _ -> cont 20;
	ReflectXToken _ -> cont 21;
	NegateToken _ -> cont 22;
	ConjunctionToken _ -> cont 23;
	SubtileToken _ -> cont 24;
	LengthToken _ -> cont 25;
	ShrinkToken _ -> cont 26;
	CompareToken _ -> cont 27;
	IfToken _ -> cont 28;
	ThenToken _ -> cont 29;
	ElseToken _ -> cont 30;
	LetToken _ -> cont 31;
	InToken _ -> cont 32;
	TrueToken _ -> cont 33;
	FalseToken _ -> cont 34;
	EqualToken _ -> cont 35;
	NotEqualToken _ -> cont 36;
	AdditionToken _ -> cont 37;
	SubtractToken _ -> cont 38;
	DivisionToken _ -> cont 39;
	MultiplyToken _ -> cont 40;
	ExponentToken _ -> cont 41;
	ModuloToken _ -> cont 42;
	LessEqualToken _ -> cont 43;
	GreatEqualToken _ -> cont 44;
	LessToken _ -> cont 45;
	GreatToken _ -> cont 46;
	AndToken _ -> cont 47;
	OrToken _ -> cont 48;
	NotToken _ -> cont 49;
	AndToken _ -> cont 50;
	OrToken _ -> cont 51;
	NotToken _ -> cont 52;
	OpenControlToken _ -> cont 53;
	CloseControlToken _ -> cont 54;
	LParToken _ -> cont 55;
	RParToken _ -> cont 56;
	SeparatorToken _ -> cont 57;
	TypeToken _ -> cont 58;
	EndLineToken _ -> cont 59;
	VarToken _ happy_dollar_dollar -> cont 60;
	AssignToken _ -> cont 61;
	StringToken _ happy_dollar_dollar -> cont 62;
	IntToken _ happy_dollar_dollar -> cont 63;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 64 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseErr tokens)
parseTL tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseErr :: [Token] -> a
parseErr [] = error "Unknown parse error"
parseErr (t:ts) = error ("line, column: " ++ tokenPosn t)

data TLType = TLInt | TLBool | TLString | TLListString
   deriving (Show,Eq)

type Environment = [(String, Expr)]

data Expr =
  Sequence Expr Expr | Copy Expr Expr | Concat Expr Expr | Enlarge Expr Expr |
  RotateR Expr Expr | Stack Expr Expr | Empty Expr | ReflectY Expr | ReflectX Expr |
  Negate Expr | Conjunction Expr Expr | Branch Expr Expr Expr | Let String TLType Expr Expr |
  Loop Expr Expr | ForLoop String String TLType Expr Expr String Expr | Subtile Expr Expr Expr Expr |
  Shrink Expr Expr | Compare Expr Expr | Length String Expr | Read String | Equal Expr Expr | NotEqual Expr Expr |
  Less Expr Expr | LessEqual Expr Expr | Great Expr Expr | GreatEqual Expr Expr | And Expr Expr |
  Or Expr Expr | Not Expr | Add Expr Expr | Minus Expr Expr | Div Expr Expr | Times Expr Expr |
  Power Expr Expr | Mod Expr Expr | Str String | TLTrue | TLFalse | ListStr [String] | Var String | Int Int                             
  deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
