package com.zgiot.kepserver.dao;

import com.zgiot.kepserver.pojo.Channel;
import com.zgiot.kepserver.pojo.Label;
import com.zgiot.kepserver.pojo.TabSignal;
import com.zgiot.kepserver.pojo.Tag;
import javafx.scene.control.Tab;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Property;
import org.omg.CORBA.portable.ValueOutputStream;

import java.util.List;
import java.util.Map;

@Mapper
public interface ChannelDao {

    List<Channel> findAllChannels(@Param("profile") String profile);

    List<Channel> findAllChannelsWithoutTags(@Param("profile")String profile);

    void insertLabelRecords(@Param("labelList")List<Label> labelList);

    void insertTagRecords(@Param("tagList")List<Tag> tagList, @Param("profile")String profile);

    void delProfileTags(@Param("profile")String profile);

    void delLabels();

    void delTabSignal();

    void insertTabSignal(@Param("signalList")List<TabSignal> tabSignals);

    @MapKey("metricName")
    Map<String,Label> getMetricCodeAndName();

    @MapKey("deviceCode")
    Map<String,TabSignal> getDeviceIdAndCode();
}
