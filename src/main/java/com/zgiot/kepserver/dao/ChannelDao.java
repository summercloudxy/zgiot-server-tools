package com.zgiot.kepserver.dao;

import com.zgiot.kepserver.pojo.Channel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ChannelDao {

    List<Channel> findAllChannels(@Param("profile") String profile);
}
