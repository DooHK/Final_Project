package com.example;

import com.example.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.example.BoardRowMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    private JdbcTemplate template ;

    @Autowired
    SqlSession sqlsession;
    public int insertBoard(BoardVO vo){
        int result = sqlsession.insert("Board.insertBoard",vo);
        return result;
    }
    public int deleteBoard(int seq){
        int result = sqlsession.delete("Board.deleteBoard",seq);
        return result;
    }
    public int updateBoard(BoardVO vo){
        int result = sqlsession.update("Board.updateBoard",vo);
        return result;
    }
    public BoardVO getBoard(int seq){
        //String sql = "select * from BOARD where seq=" +seq;
        //return template.queryForObject(sql,new BoardRowMapper());
        return sqlsession.selectOne("Board.getBoard",seq);
    }
    public List<BoardVO> getBoardList(){
//        String sql = "select * from BOARD order by regdate desc";
//        return template.query(sql,new BoardRowMapper());
        return sqlsession.selectList("Board.getBoardList");
    }
}
