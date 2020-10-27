package kr.spring.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.board.domain.BoardVO;

public interface BoardMapper {
	public List<BoardVO> selectList(Map<String,Object> map);
	public int selectRowCount(Map<String,Object> map);
	@Insert("INSERT INTO bo (num,name,title,content,uploadfile,filename) VALUES (bo_seq.nextval,#{name},#{title},#{content},#{uploadfile},#{filename})")
	public void insert(BoardVO board);
	@Select("SELECT * FROM bo WHERE num=#{num}")
	public BoardVO selectBoard(Integer num);
	@Update("UPDATE bo SET hit=hit+1 WHERE num=#{num}")
	public void updateHit(Integer num);
	public void update(BoardVO board);
	@Delete("DELETE FROM bo WHERE num=#{num}")
	public void delete(Integer num);
}
