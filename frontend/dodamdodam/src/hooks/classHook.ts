import { authAxios, defaultAxios } from "@/api/common";
import { ClassType, ModifyClassType, RegistClassType } from "@/types/classType";
import { useQuery, useMutation, useQueryClient } from "react-query";

export const useClass = () =>
  useQuery<ClassType[]>({
    queryKey: ["class", "list"],
    queryFn: () =>
      authAxios
        .get(`kindergarten/class`)
        .then((res) => {
          return res.data.result;
        })
        .catch((err) => {
          console.log(err);
        }),
  });

export const useManageClass = () => {
  const queryClient = useQueryClient();

  //등록
  const regist = useMutation((data: RegistClassType) =>
    authAxios.post(`kindergarten/class`, data)
  );

  const registClass = async (data: RegistClassType) => {
    try {
      await regist.mutateAsync(data);
      queryClient.invalidateQueries(["class", "list"]);
    } catch (e) {
      console.log(e);
    }
  };

  //수정
  const modify = useMutation((data: ModifyClassType) =>
    defaultAxios.put(`kindergarten/class`, data)
  );

  const modifyClass = async (data: ModifyClassType) => {
    try {
      await modify.mutateAsync(data);
      queryClient.invalidateQueries(["class", "list"]);
    } catch (e) {
      console.log(e);
    }
  };

  //삭제
  const erase = useMutation((classSeq: number) =>
    defaultAxios.delete(`kindergarten/class/${classSeq}`)
  );

  const deleteClass = async (classSeq: number) => {
    try {
      await erase.mutateAsync(classSeq);
      queryClient.invalidateQueries(["class", "list"]);
    } catch (e) {
      console.log(e);
    }
  };

  const eraseTeacher = useMutation((teacherSeq: number) =>
    defaultAxios.delete(`kindergarten/teacher/${teacherSeq}`)
  );

  const deleteTeacher = async (teacherSeq: number) => {
    try {
      // console.log(teacherSeq);
      await eraseTeacher.mutateAsync(teacherSeq);
      queryClient.invalidateQueries(["class", "list"]);
    } catch (e) {
      console.log(e);
    }
  };

  return { registClass, modifyClass, deleteClass, deleteTeacher };
};
