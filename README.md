# MRMD5
## MD5 的正确加密方式, 如果你发现你的MD5加密工具对中文进行加密后与 http://tool.chinaz.com/Tools/MD5.aspx 这里的不一样, 那说明你的MD5加密工具可能有些问题.

    /**
     *
     
     CC_MD5_Update(&md5HashContext, input, (CC_LONG)[self length]); // This is wrong!
     CC_MD5_Update(&md5HashContext, input, (CC_LONG)strlen(input)); // This is right.
     
     @  我发现 github 上存在一些MD5加密工具都有一处错误, 那就是
     CC_MD5_Update 这个方法的第三个参数, 它们直接使用了 'self.length' 作为参数,
     这里其实应该使用 'strlen([self UTF8String])' 作为参数,
     因为一个是 NSString 的长度, 另一个是 char * 的长度.
     许多歪过朋友一直使用也没有发现问题可能是因为没有碰到对中文或emoji进行MD5的情况.
     
     *
     */
