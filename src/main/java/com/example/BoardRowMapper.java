package com.example;

import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;


class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum)throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setName(rs.getString("name"));
        vo.setWriter(rs.getString("writer"));
        vo.setArea(rs.getString("area"));
        vo.setCategory(rs.getString("category"));
        vo.setRegdate(rs.getDate("regdate"));
        vo.setPrice(rs.getInt("price"));
        vo.setManner(rs.getInt("manner"));
        vo.setState(rs.getString("state"));
        return vo;
    }
}