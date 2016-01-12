import qualified Data.ByteString as B


data MP3BitStream = MP3BitStream{
    bitstreamStream :: B.ByteString,
    bitstreamBuffer:: [Word8]
}

mp3Seek :: MP3Bitstream -> Maybe MP3Bitstream
mp3UnpackFrame :: MP3Bitstream -> (MP3Bitstream, Maybe MP3LogicalFrame)
mp3ParseMainData :: MP3LogicalFrame -> Maybe MP3Data