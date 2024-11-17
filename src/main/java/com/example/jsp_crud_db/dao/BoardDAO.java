package com.example.jsp_crud_db.dao;

import com.example.jsp_crud_db.bean.BoardVO;
import com.example.jsp_crud_db.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

public class BoardDAO {
    Connection conn = null;
    PreparedStatement stmt = null;


    String board_insert = "insert into board (title, writer, content) values (?,?,?)";
    String board_update = "update board set title=?, writer=?, content=? where seq=?";
    String board_delete = "delete from board where seq=?";
    String board_get = "select * from board where seq=?";
    String board_list = "select * from board order by seq desc";

    int insertBoard(BoardVO vo) {
        int result = 0;
        conn = JDBCUtil.getConnection();
        if (conn == null) {
            System.out.println("DB연결 오류!");
            return 0;
        }
        else {
            System.out.println("===> JDBC로 insertBoard() 기능 처리");
            try {
                conn = JDBCUtil.getConnection();
                stmt = conn.prepareStatement(board_insert);
                stmt.setString(1, vo.getTitle());
                stmt.setString(2, vo.getWriter());
                stmt.setString(3, vo.getContent());
                stmt.executeUpdate();
                return 1;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }

//    void deleteBoard(BoardVO vo) {
//
//    }
//
//    int updateBoard(BoardVO vo) {
//
//    }
//
//    BoardVO getBoard(int seq) {
//
//    }
//
//    List<BoardVO> getBoardList() {
//
//    }
}
